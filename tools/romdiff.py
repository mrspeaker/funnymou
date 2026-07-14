#!/usr/bin/env python3
"""Relocation-aware diff of Funny Mouse vs Super Mouse main-CPU ROMs.

Decodes both 20KB images as linear Z80 instruction streams, masks 16-bit
operands that point into ROM ($0000-$4FFF) so relocated-but-identical code
compares equal, then sequence-aligns the two token streams.
"""
import difflib, sys
from pathlib import Path

BASE = Path(__file__).resolve().parent.parent / 'dump'
fm = b''.join(open(f'{BASE}/suprmous.x{i}', 'rb').read() for i in range(1, 6))
sm = b''.join(open(f'{BASE}/sm/sm.{i}', 'rb').read() for i in range(1, 6))

ROM_TOP = 0x5000

def decode(mem):
    """Yield (addr, length, token) for a linear decode of mem."""
    out = []
    i = 0
    n = len(mem)
    while i < n:
        a = i
        op = mem[i]
        imm16_at = None  # index of 16-bit operand within instruction
        ln = 1
        if op == 0xCB:
            ln = 2
        elif op == 0xED:
            if i + 1 < n:
                op2 = mem[i + 1]
                if (op2 & 0xC7) == 0x43:  # ld (nn),rp / ld rp,(nn)
                    ln = 4
                    imm16_at = 2
                else:
                    ln = 2
            else:
                ln = 2
        elif op in (0xDD, 0xFD):
            if i + 1 >= n:
                ln = 1
            else:
                op2 = mem[i + 1]
                if op2 == 0xCB:
                    ln = 4
                elif op2 == 0x21:      # ld ix,nn
                    ln = 4; imm16_at = 2
                elif op2 in (0x22, 0x2A):  # ld (nn),ix / ld ix,(nn)
                    ln = 4; imm16_at = 2
                elif op2 == 0x36:      # ld (ix+d),n
                    ln = 4
                elif op2 in (0x34, 0x35) or \
                     (0x40 <= op2 <= 0x7F and op2 != 0x76 and
                      ((op2 & 7) == 6 or (op2 >> 3) & 7 == 6)) or \
                     (0x80 <= op2 <= 0xBF and (op2 & 7) == 6):
                    ln = 3              # ops with (ix+d)
                elif op2 in (0xDD, 0xFD, 0xED):
                    ln = 1              # prefix stacking: treat as 1-byte nop-ish
                else:
                    ln = 2
        else:
            x = op >> 6; y = (op >> 3) & 7; z = op & 7
            if x == 0:
                if z == 0:
                    ln = 1 if y < 2 else 2          # nop/ex vs djnz/jr
                elif z == 1:
                    if (op & 0x0F) == 0x01:          # ld rp,nn
                        ln = 3; imm16_at = 1
                    else:
                        ln = 1                       # add hl,rp
                elif z == 2:
                    if op in (0x22, 0x2A, 0x32, 0x3A):
                        ln = 3; imm16_at = 1
                    else:
                        ln = 1
                elif z == 6:
                    ln = 2                           # ld r,n
                else:
                    ln = 1
            elif x in (1, 2):
                ln = 1
            else:  # x == 3
                if z == 2 or z == 4:                 # jp cc,nn / call cc,nn
                    ln = 3; imm16_at = 1
                elif z == 3:
                    if y == 0:
                        ln = 3; imm16_at = 1         # jp nn
                    elif y in (2, 3):
                        ln = 2                       # out(n),a / in a,(n)
                    else:
                        ln = 1
                elif z == 5:
                    if (op >> 4) == 0xC and op == 0xCD:
                        ln = 3; imm16_at = 1         # call nn
                    elif op & 0x08:                  # 0xCD handled; DD/ED/FD handled above
                        ln = 3; imm16_at = 1 if op == 0xCD else None
                        if op != 0xCD:
                            ln = 1
                    else:
                        ln = 1                       # push
                elif z == 6:
                    ln = 2                           # alu n
                else:
                    ln = 1
        if i + ln > n:
            ln = n - i
        raw = mem[i:i + ln]
        if imm16_at is not None and imm16_at + 1 < ln:
            val = raw[imm16_at] | (raw[imm16_at + 1] << 8)
            if val < ROM_TOP:
                tok = bytes(raw[:imm16_at]) + b'\xAA\xBB'   # masked ROM addr
            else:
                tok = bytes(raw)
        else:
            tok = bytes(raw)
        out.append((a, ln, tok))
        i += ln
    return out

fmd = decode(fm)
smd = decode(sm)
fmt = [t for _, _, t in fmd]
smt = [t for _, _, t in smd]

mx = difflib.SequenceMatcher(None, fmt, smt, autojunk=False)
ops = mx.get_opcodes()

# merge nearby non-equal hunks (equal runs < MERGE instructions between them)
MERGE = 4
merged = []
for tag, i1, i2, j1, j2 in ops:
    if tag == 'equal' and (i2 - i1) < MERGE and merged and merged[-1][0] != 'equal':
        merged.append(['bridge', i1, i2, j1, j2])
    else:
        merged.append([tag, i1, i2, j1, j2])
# collapse runs of non-equal (+bridge) into single hunks
hunks = []
cur = None
for tag, i1, i2, j1, j2 in merged:
    if tag == 'equal':
        if cur: hunks.append(cur); cur = None
        hunks.append(('equal', i1, i2, j1, j2))
    else:
        if cur is None:
            cur = ['diff', i1, i2, j1, j2]
        else:
            cur[2] = i2; cur[4] = j2
if cur: hunks.append(cur)

print(f"fm: {len(fmd)} insns, sm: {len(smd)} insns")
for tag, i1, i2, j1, j2 in hunks:
    fa1 = fmd[i1][0] if i1 < len(fmd) else 0x5000
    fa2 = (fmd[i2 - 1][0] + fmd[i2 - 1][1] - 1) if i2 > i1 else fa1
    sa1 = smd[j1][0] if j1 < len(smd) else 0x5000
    sa2 = (smd[j2 - 1][0] + smd[j2 - 1][1] - 1) if j2 > j1 else sa1
    if tag == 'equal':
        if i2 - i1 >= 24:
            print(f"  same   fm ${fa1:04X}-${fa2:04X} = sm ${sa1:04X}-${sa2:04X}"
                  f"  ({i2-i1} insns, shift {sa1-fa1:+d})")
    else:
        nf, ns = i2 - i1, j2 - j1
        fb = fa2 - fa1 + 1 if nf else 0
        sb = sa2 - sa1 + 1 if ns else 0
        print(f"* DIFF  fm ${fa1:04X}-${fa2:04X} ({fb}B/{nf}i)"
              f"  sm ${sa1:04X}-${sa2:04X} ({sb}B/{ns}i)")
