#!/bin/bash
rm -rf zout

cut -c 16- funnymou.asm > src.asm
zmac -c -n src.asm
split -b4k zout/src.cim zout/f

echo `md5 zout/faa`
echo `md5 dump/suprmous.x1`
