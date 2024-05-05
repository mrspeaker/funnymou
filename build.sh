#!/bin/bash
rm -rf zout

cut -c 16- funnymou.asm > src.asm
zmac -c -n src.asm
split -b4k zout/src.cim zout/f

# cmp -l -x dump/suprmous.x1 zout/faa

f1a=`shasum zout/faa | sed 's/.*=.//g'`
f1b=`shasum dump/suprmous.x1 | sed 's/.*=.//g'`
echo $f1a
echo $f1b

f2a=`shasum zout/fab | sed 's/.*=.//g'`
f2b=`shasum dump/suprmous.x2 | sed 's/.*=.//g'`
echo $f2a
echo $f2b

f3a=`shasum zout/fac | sed 's/.*=.//g'`
f3b=`shasum dump/suprmous.x3 | sed 's/.*=.//g'`
echo $f3a
echo $f3b

f4a=`shasum zout/fad | sed 's/.*=.//g'`
f4b=`shasum dump/suprmous.x4 | sed 's/.*=.//g'`
echo $f4a
echo $f4b

f5a=`shasum zout/fae | sed 's/.*=.//g'`
f5b=`shasum dump/suprmous.x5 | sed 's/.*=.//g'`
echo $f5a
echo $f5b

#if [ "$f1a" = "$f1b" ]; then
#    echo "ROM 1 OK"
#else
#    echo "ROM 1 checksum error"
#fi
