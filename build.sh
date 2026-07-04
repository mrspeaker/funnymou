#!/bin/bash

set -e

# clear previous output
echo "clean:     go."
rm -rf zout

# chop off listing 16 chars
cut -c 16- funnymou.asm > src.asm

# compile to un-annotated bytes
echo -n "compile:   "
#zmac -j -c -n --oo cim,lst bongo.asm
zmac -c -n src.asm
echo "go."

split -b4k -d -a 1 zout/src.cim zout/f

mv zout/f0 zout/suprmous.x1
mv zout/f1 zout/suprmous.x2
mv zout/f2 zout/suprmous.x3
mv zout/f3 zout/suprmous.x4
mv zout/f4 zout/suprmous.x5

# Test which bits are diff:
# cmp  -l -x dump/bg1.bin zout/bg1


f1a=`shasum zout/suprmous.x1 | sed 's/.*=.//g'`
f1b=`shasum dump/suprmous.x1 | sed 's/.*=.//g'`
echo $f1a
echo $f1b

f2a=`shasum zout/suprmous.x2 | sed 's/.*=.//g'`
f2b=`shasum dump/suprmous.x2 | sed 's/.*=.//g'`
echo $f2a
echo $f2b

f3a=`shasum zout/suprmous.x3 | sed 's/.*=.//g'`
f3b=`shasum dump/suprmous.x3 | sed 's/.*=.//g'`
echo $f3a
echo $f3b

f4a=`shasum zout/suprmous.x4 | sed 's/.*=.//g'`
f4b=`shasum dump/suprmous.x4 | sed 's/.*=.//g'`
echo $f4a
echo $f4b

f5a=`shasum zout/suprmous.x5 | sed 's/.*=.//g'`
f5b=`shasum dump/suprmous.x5 | sed 's/.*=.//g'`
echo $f5a
echo $f5b

#if [ "$f1a" = "$f1b" ]; then
#    echo "ROM 1 OK"
#else
#    echo "ROM 1 checksum error"
#fi

cp zout/suprmous* tools/rom
