#!/bin/bash

# relies on zmac (http://48k.ca/zmac.html) for compilation

# Notes: making compileable listing from mame `dasm`
# 1. In Mame: `dasm fmdump.asm,0,5fff,0`  ; last 0 is for opcodes on/off
# 2. Chop off start of lines to only leave instructions
#    cut -c 6- fmdump.asm > src.asm
# 3. zmac -j -c -n src.asm ; try to compile with rel jumps fixed
# .. If needed: rename any `rrd (hl)` to `rrd` (same for `rld`)
# 4. copy zout/fmdump.lst back to be new source, then build.sh...

# Test which bits are diff:
# cmp  -l -x dump/bg1.bin zout/bg1
#

set -e

# clear previous output
echo "clean:     go."
rm -rf zout

# chop off listing 16 chars
cut -c 16- funnymou.asm > src.asm

# compile to un-annotated bytes
echo -n "compile:   "
zmac -c -n --oo cim,lst src.asm
echo "go."

split -b4k -d -a 1 zout/src.cim zout/f

mv zout/f0 zout/suprmous.x1
mv zout/f1 zout/suprmous.x2
mv zout/f2 zout/suprmous.x3
mv zout/f3 zout/suprmous.x4
mv zout/f4 zout/suprmous.x5

# Test which bits are diff:
# cmp  -l -x dump/bg1.bin zout/bg1

# CRC verify each split ROM against the real dump
echo -n "verify:    "
err=0
for n in 1 2 3 4 5; do
    a=`shasum zout/suprmous.x$n | awk '{ print $1 }'`
    b=`shasum dump/suprmous.x$n | awk '{ print $1 }'`
    if test "$a" != "$b"
    then
        echo
        echo "CRC error: zout/suprmous.x$n - dump/suprmous.x$n:"
        cmp -l zout/suprmous.x$n dump/suprmous.x$n | head -n 5
        err=$((err+1))
    fi
done

if [ "$err" -ne "0" ]; then
    echo "-"
    echo
    echo "no go. ($err ROM(s) mismatched)"
    echo
    exit 1
fi

echo "go."
echo "mouse:     go!"
echo

# Copy the roms to the JS project
cp zout/suprmous* tools/rom
