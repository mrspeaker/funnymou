// Funny Mouse level viewer.
// Renders the 4 maze tilemaps from the actual ROM graphics, decoded exactly as
// MAME's thepit/suprmous driver does (3bpp planar chars + PROM palette).
//
// Data sources (all under tools/rom/):
//   suprmous.x1..x5  main CPU ROM  ($0000-$4FFF) -> holds the 4 maze banks
//   suprmous.x8      gfx plane bit0 (LSB)  gfx offset $0000
//   suprmous.x9      gfx plane bit1        gfx offset $1000
//   suprmous.x7      gfx plane bit2 (MSB)  gfx offset $2000
//   smouse2.clr      color PROM (blue source)  proms offset $00
//   smouse1.clr      color PROM (red/green src) proms offset $20
//
// See CLAUDE.md: draw_cur_level_map ($130B) selects a bank by (cur_map & 3) and
// blits 28x28 tile bytes to VRAM $9043, filling color RAM with $83.

const MAZE_W = 28, MAZE_H = 28, TILE = 8;
const MAZE_BYTES = MAZE_W * MAZE_H;                 // $310 = 784
const MAZE_COLOR = 0x83;                            // color byte the game writes
const FORE_GROUP = MAZE_COLOR % 4;                  // gfx(0)->colors() == 4  -> group 3
const LEVEL_ADDR = [0x1391, 0x16A1, 0x19B1, 0x1CC1];// level_1..4_map

// Junction decision-lattice (see CLAUDE.md §6): an enemy only re-steers when its
// own X/Y land on X in {$14+$20n}, Y in {$22+$20n}. get_tile_pos maps those to a
// fixed set of cells (level-independent). Precomputed here from that routine.
const JUNC_X = [0x14, 0x34, 0x54, 0x74, 0x94, 0xB4, 0xD4];
const JUNC_Y = [0x22, 0x42, 0x62, 0x82, 0xA2, 0xC2, 0xE2];

// Tile legend for the on-screen key (code -> [label, css color]).
const LEGEND = [
  [0x25, 'floor',    '#000000'],
  [0xF4, 'wall',     '#0000ff'],
  [0xF5, 'ladder',   '#e71800'],
  [0x37, 'water',    '#18e7ff'],
  [0x35, 'food',     '#ffff00'],
  [0xFC, 'bridge',   '#08e700'],
  [0xF9, 'slide',    '#e700ff'],
  [0xFF, 'home',     '#ffffff'],
  [0xFD, 'boulder',  '#e71800'],
];

const state = { level: 0, tiles: null, palette: null, prog: null, scale: 3,
                showJunc: false };

const el = (id) => document.getElementById(id);

async function loadBin(path) {
  const res = await fetch(path);
  if (!res.ok) throw new Error(`${path} (${res.status})`);
  return new Uint8Array(await res.arrayBuffer());
}

// Replicate get_tile_pos ($30B3): actor (x,y) -> absolute VRAM tile address.
function getTilePos(x, y) {
  let a = ((y >> 3) | (y << 5)) & 0xFF; a &= 0x1F;      // row from Y (rrca x3, &$1F)
  let l = a;
  a = (-x) & 0xFF;                                       // neg X
  a = ((a << 1) | (a >> 7)) & 0xFF;                      // rlca
  a = ((a << 1) | (a >> 7)) & 0xFF;                      // rlca
  let h = a;
  l = (a & 0xE0) | l;
  h = (h & 0x03);
  return ((0x90 + h) << 8) | l;
}

// The maze is blitted to VRAM $9043. Map each junction (X,Y) to a data-grid cell.
function junctionCells() {
  const cells = [];
  for (const x of JUNC_X) for (const y of JUNC_Y) {
    const off = getTilePos(x, y) - 0x9043;
    // get_tile_pos ($30B3) returns the tile the enemy *reads* for its wall/water
    // check, offset from the corridor cell its sprite actually sits on. Correct in
    // maze-data space by -1 row / +1 col (which, through the ROT90 cabinet view,
    // reads as "down 1, right 1" on screen). Verified against the ROM: this lays
    // all 49 lattice points x 4 mazes onto the ladder-shaft columns ($F5) at the
    // decision rows. See CLAUDE.md §6.
    const r = (off >> 5) - 1;                            // stride $20 per VRAM row
    const c = (off & 0x1F) + 1;
    if (r >= 0 && r < MAZE_H && c >= 0 && c < MAZE_W) cells.push([r, c]);
  }
  return cells;
}

// Build 32-entry RGB palette exactly like suprmous_palette().
function buildPalette(prom2, prom1) {
  const bsw = (x) => { let r = 0; for (let i = 0; i < 8; i++) r |= ((x >> i) & 1) << (7 - i); return r; };
  const p5 = (v) => { v &= 0x1F; return (v << 3) | (v >> 2); };
  const p4 = (v) => { v &= 0x0F; return (v << 4) | v; };
  const pal = [];
  for (let i = 0; i < 32; i++) {
    const b = bsw(prom2[i]);
    const g = bsw(prom1[i]);
    const r = (((b >> 5) & 7) << 2) | ((g >> 6) & 3);
    pal.push([p5(r), p5(g), p4(b)]);
  }
  return pal;
}

// Decode all 256 chars into Uint8Array(64) pixel-value (0-7) buffers.
function decodeTiles(p0, p1, p2) {
  const tiles = [];
  for (let n = 0; n < 256; n++) {
    const px = new Uint8Array(64);
    for (let row = 0; row < 8; row++) {
      const b0 = p0[n * 8 + row], b1 = p1[n * 8 + row], b2 = p2[n * 8 + row];
      for (let col = 0; col < 8; col++) {
        const s = 7 - col;
        px[row * 8 + col] = (((b2 >> s) & 1) << 2) | (((b1 >> s) & 1) << 1) | ((b0 >> s) & 1);
      }
    }
    tiles.push(px);
  }
  return tiles;
}

function currentMaze() {
  const base = LEVEL_ADDR[state.level];
  return state.prog.subarray(base, base + MAZE_BYTES);
}

function render() {
  const maze = currentMaze();
  const S = MAZE_W * TILE;                              // 224 px native

  // 1) paint the maze into a native-resolution ImageData.
  const buf = new ImageData(S, S);
  const d = buf.data;
  for (let row = 0; row < MAZE_H; row++) {
    for (let col = 0; col < MAZE_W; col++) {
      const tile = state.tiles[maze[row * MAZE_W + col]];
      for (let py = 0; py < 8; py++) {
        for (let px = 0; px < 8; px++) {
          const [r, g, b] = state.palette[FORE_GROUP * 8 + tile[py * 8 + px]];
          const idx = (((row * 8 + py) * S) + (col * 8 + px)) * 4;
          d[idx] = r; d[idx + 1] = g; d[idx + 2] = b; d[idx + 3] = 255;
        }
      }
    }
  }

  // 2) blit native ImageData onto an offscreen, then scale (crisp) to the canvas.
  const off = document.createElement('canvas');
  off.width = S; off.height = S;
  off.getContext('2d').putImageData(buf, 0, 0);

  const scale = state.scale;
  const cv = el('screen');
  const ctx = cv.getContext('2d');
  cv.width = S * scale; cv.height = S * scale;
  ctx.imageSmoothingEnabled = false;
  ctx.clearRect(0, 0, cv.width, cv.height);
  ctx.drawImage(off, 0, 0, cv.width, cv.height);

  // 3) optional AI junction overlay.
  if (state.showJunc) {
    ctx.strokeStyle = 'rgba(255,80,80,0.9)';
    ctx.fillStyle = 'rgba(255,80,80,0.35)';
    ctx.lineWidth = Math.max(1, scale);
    const half = TILE * scale / 2;
    for (const [r, c] of junctionCells()) {
      const cx = (c * TILE + TILE / 2) * scale;
      const cy = (r * TILE + TILE / 2) * scale;
      ctx.beginPath();
      ctx.arc(cx, cy, half * 0.55, 0, Math.PI * 2);
      ctx.fill(); ctx.stroke();
    }
  }

  // 4) cabinet ROT90 view via CSS transform (native game is rotated 90° CW).
  cv.style.transform = 'rotate(90deg)';

  el('lvlnum').textContent = state.level + 1;
  el('lvladdr').textContent = '$' + LEVEL_ADDR[state.level].toString(16).toUpperCase();
  el('prev').disabled = state.level === 0;
  el('next').disabled = state.level === LEVEL_ADDR.length - 1;
}

function buildLegend() {
  el('legend').innerHTML = LEGEND
    .map(([code, name, col]) =>
      `<span><i class="swatch" style="background:${col}"></i>${name} <span style="color:#5a606e">$${code.toString(16).toUpperCase()}</span></span>`)
    .join('');
}

function wire() {
  el('prev').onclick = () => { if (state.level > 0) { state.level--; render(); } };
  el('next').onclick = () => { if (state.level < LEVEL_ADDR.length - 1) { state.level++; render(); } };
  el('junctions').onchange = (e) => { state.showJunc = e.target.checked; render(); };
  el('scale').oninput = (e) => { state.scale = +e.target.value; render(); };
  document.addEventListener('keydown', (e) => {
    if (e.key === 'ArrowLeft') el('prev').click();
    if (e.key === 'ArrowRight') el('next').click();
  });
}

async function main() {
  try {
    const [x1, x2, x3, x4, x5, x8, x9, x7, clr2, clr1] = await Promise.all([
      loadBin('rom/suprmous.x1'), loadBin('rom/suprmous.x2'), loadBin('rom/suprmous.x3'),
      loadBin('rom/suprmous.x4'), loadBin('rom/suprmous.x5'),
      loadBin('rom/suprmous.x8'), loadBin('rom/suprmous.x9'), loadBin('rom/suprmous.x7'),
      loadBin('rom/smouse2.clr'), loadBin('rom/smouse1.clr'),
    ]);

    // Concatenate main ROM into one $0000-based address space.
    const prog = new Uint8Array(0x5000);
    [x1, x2, x3, x4, x5].forEach((c, i) => prog.set(c, i * 0x1000));
    state.prog = prog;

    state.tiles = decodeTiles(x8, x9, x7);   // planes: x8=bit0, x9=bit1, x7=bit2
    state.palette = buildPalette(clr2, clr1);

    buildLegend();
    wire();
    render();
  } catch (err) {
    const box = el('error');
    box.style.display = 'block';
    box.innerHTML =
      `Could not load ROM files: <b>${err.message}</b><br><br>` +
      `Browsers block <code>fetch()</code> of local files, so serve this folder over HTTP:` +
      `<br><br><code>cd tools &amp;&amp; python3 -m http.server 8000</code><br>` +
      `then open <code>http://localhost:8000/</code>`;
    console.error(err);
  }
}

main();
