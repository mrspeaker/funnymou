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

// Per-maze food tables (see CLAUDE.md §5), stride $12 per maze, indexed by
// (cur_map & 3), 9 pieces of 2 bytes each:
//   FOOD_POS $3FC6 = VRAM cell (top-left of the 2x2 block) — a literal draw
//                    address, so it maps to a maze cell directly via -$9043.
//   FOOD_GFX $400E = pointer to the 2x2 graphic: 4 consecutive tile codes
//                    [t0 t1; t2 t3] followed by a colour byte. Deterministic:
//                    5 fruit graphics ($405D/$4062/$4067/$406C/$4071) cycled
//                    across the 9 slots — food is never random.
const FOOD_POS = 0x3FC6, FOOD_GFX = 0x400E, FOOD_STRIDE = 0x12, FOOD_COUNT = 9;

// Actors, from their ROM init templates (spawn X/Y = record +$06/+$07 for the
// player, +$08/+$09 for enemies; enemy tile = +$04; enemy sprite colour is the
// constant $06 committed at $309C -> group 2, player colour $05 -> group 1).
// Sprite codes are 16x16 (gfx bank offset $800): mouse walk $00-$03, cat $1C-$1F,
// snake $2C-$2F. Spawns all sit on the junction lattice. (snake B shares snake A's
// spawn cell for staggered entry, so it is not drawn separately.)
const ACTORS = [
  { name: 'mouse',   x: 0x74, y: 0xC2, code: 0x00, group: 1 },
  { name: 'cat A',   x: 0xB4, y: 0x42, code: 0x1C, group: 2 },
  { name: 'cat B',   x: 0x34, y: 0x42, code: 0x1C, group: 2 },
  { name: 'cat C',   x: 0x34, y: 0xC2, code: 0x1C, group: 2 },
  { name: 'snake',   x: 0xB4, y: 0xC2, code: 0x2C, group: 2 },
];

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
                showJunc: false, showFood: false, showActors: false };

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

// Map an actor game-space (X,Y) to the maze-data cell its sprite sits on.
// get_tile_pos ($30B3) returns the tile the actor *reads* for its wall/water
// check, offset from the corridor cell the sprite actually occupies; correct in
// maze-data space by -1 row / +1 col (which, through the ROT90 cabinet view, reads
// as "down 1, right 1" on screen). Verified against the ROM: this lays all 49
// junction lattice points x 4 mazes onto the ladder-shaft columns ($F5) at the
// decision rows. See CLAUDE.md §6.
function posToCell(x, y) {
  const off = getTilePos(x, y) - 0x9043;               // maze blitted to VRAM $9043
  return [(off >> 5) - 1, (off & 0x1F) + 1];           // stride $20 per VRAM row
}

// The junction decision-lattice cells for the current maze (level-independent).
function junctionCells() {
  const cells = [];
  for (const x of JUNC_X) for (const y of JUNC_Y) {
    const [r, c] = posToCell(x, y);
    if (r >= 0 && r < MAZE_H && c >= 0 && c < MAZE_W) cells.push([r, c]);
  }
  return cells;
}

// The 9 food pieces for the current level's maze: cell (top-left of the 2x2
// block) plus the 4 tile codes of its fruit graphic, read from the ROM tables.
function foodPieces() {
  const mz = state.level & 3;
  const pbase = FOOD_POS + mz * FOOD_STRIDE, gbase = FOOD_GFX + mz * FOOD_STRIDE;
  const pieces = [];
  for (let i = 0; i < FOOD_COUNT; i++) {
    const vram = state.prog[pbase + i * 2] | (state.prog[pbase + i * 2 + 1] << 8);
    const off = vram - 0x9043;
    const r = off >> 5, c = off & 0x1F;
    const gfx = state.prog[gbase + i * 2] | (state.prog[gbase + i * 2 + 1] << 8);
    const tiles = [state.prog[gfx], state.prog[gfx + 1],
                   state.prog[gfx + 2], state.prog[gfx + 3]];
    if (r >= 0 && r < MAZE_H && c >= 0 && c < MAZE_W) pieces.push({ r, c, tiles });
  }
  return pieces;
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

// Decode all 64 sprites (suprmous_spritelayout: 16x16, 3bpp, gfx byte offset
// $0800, 32 bytes each) into Uint8Array(256) pixel-value (0-7) buffers.
function decodeSprites(p0, p1, p2) {
  const planes = [p0, p1, p2];
  const yoff = [], xoff = [];
  for (let y = 0; y < 8; y++) yoff.push(y * 8);        // STEP8(0,8)
  for (let y = 0; y < 8; y++) yoff.push(128 + y * 8);  // STEP8(16*8,8)
  for (let x = 0; x < 8; x++) xoff.push(x);            // STEP8(0,1)
  for (let x = 0; x < 8; x++) xoff.push(64 + x);       // STEP8(8*8,1)
  const sprites = [];
  for (let n = 0; n < 64; n++) {
    const base = 0x800 + n * 32, px = new Uint8Array(256);
    for (let y = 0; y < 16; y++) {
      for (let x = 0; x < 16; x++) {
        const b = yoff[y] + xoff[x], byte = base + (b >> 3), bit = 7 - (b & 7);
        let v = 0;
        for (let p = 0; p < 3; p++) v |= ((planes[p][byte] >> bit) & 1) << p;
        px[y * 16 + x] = v;
      }
    }
    sprites.push(px);
  }
  return sprites;
}

// Paint a 16x16 sprite (palette group `grp`) into native ImageData `d` at native
// top-left pixel (ox, oy). Pixel value 0 is transparent (hardware transpen 0).
function paintSprite(d, S, code, grp, ox, oy) {
  const spr = state.sprites[code & 0x3f];
  for (let y = 0; y < 16; y++) {
    for (let x = 0; x < 16; x++) {
      const v = spr[y * 16 + x];
      if (v === 0) continue;
      const X = ox + x, Y = oy + y;
      if (X < 0 || X >= S || Y < 0 || Y >= S) continue;
      const [r, g, b] = state.palette[grp * 8 + v];
      const idx = (Y * S + X) * 4;
      d[idx] = r; d[idx + 1] = g; d[idx + 2] = b; d[idx + 3] = 255;
    }
  }
}

function currentMaze() {
  const base = LEVEL_ADDR[state.level];
  return state.prog.subarray(base, base + MAZE_BYTES);
}

// Paint one 8x8 tile (using foreground palette group) into native ImageData `d`
// at maze cell (cellRow, cellCol). `S` is the buffer's pixel width.
function paintTile(d, S, tileIdx, cellRow, cellCol) {
  const tile = state.tiles[tileIdx];
  for (let py = 0; py < 8; py++) {
    for (let px = 0; px < 8; px++) {
      const [r, g, b] = state.palette[FORE_GROUP * 8 + tile[py * 8 + px]];
      const idx = (((cellRow * 8 + py) * S) + (cellCol * 8 + px)) * 4;
      d[idx] = r; d[idx + 1] = g; d[idx + 2] = b; d[idx + 3] = 255;
    }
  }
}

function render() {
  const maze = currentMaze();
  const S = MAZE_W * TILE;                              // 224 px native

  // 1) paint the maze into a native-resolution ImageData.
  const buf = new ImageData(S, S);
  const d = buf.data;
  for (let row = 0; row < MAZE_H; row++)
    for (let col = 0; col < MAZE_W; col++)
      paintTile(d, S, maze[row * MAZE_W + col], row, col);

  // 1b) draw the real food graphics (2x2 fruit blocks) over their floor cells,
  //     exactly as food_maze_redraw ($3E29) blits them at runtime.
  if (state.showFood)
    for (const { r, c, tiles } of foodPieces()) {
      paintTile(d, S, tiles[0], r,     c);
      paintTile(d, S, tiles[1], r,     c + 1);
      paintTile(d, S, tiles[2], r + 1, c);
      paintTile(d, S, tiles[3], r + 1, c + 1);
    }

  // 1c) draw the actor sprites (mouse / cats / snake) at their spawn cells. The
  //     16x16 sprite is centred on the cell centre (cell*8 + 4).
  if (state.showActors)
    for (const { x, y, code, group } of ACTORS) {
      const [r, c] = posToCell(x, y);
      paintSprite(d, S, code, group, c * TILE - 4, r * TILE - 4);
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

  // 3b) thin locator outline around each food block, so the fruit graphics
  //     (already painted into the maze in step 1b) are easy to spot.
  if (state.showFood) {
    ctx.strokeStyle = 'rgba(255,214,64,0.9)';
    ctx.lineWidth = Math.max(1, scale);
    const box = 2 * TILE * scale, o = ctx.lineWidth / 2;
    for (const { r, c } of foodPieces()) {
      ctx.strokeRect(c * TILE * scale - o, r * TILE * scale - o, box + 2 * o, box + 2 * o);
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
  el('food').onchange = (e) => { state.showFood = e.target.checked; render(); };
  el('actors').onchange = (e) => { state.showActors = e.target.checked; render(); };
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
    state.sprites = decodeSprites(x8, x9, x7);
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
