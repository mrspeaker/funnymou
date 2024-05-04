#!/bin/bash
rm -rf zout

cut -c 16- funnymou.asm > src.asm
zmac -c -n src.asm
split -b4k zout/src.cim zout/f

f1a=`md5 zout/faa | sed 's/.*=.//g'`
f1b=`md5 dump/suprmous.x1 | sed 's/.*=.//g'`

echo $f1a
echo $f1b

#if ["$f1a" = "$f1b"]; then
#    echo "ROM 1 OK"
#else
#    echo "ROM 1 checksum error"
#fi
