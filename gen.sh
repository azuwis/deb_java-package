#!/bin/bash
cd `dirname $0`
mkdir -p tmp
chown nobody\: tmp
DIST=wheezy ARCH=amd64 pbuilder --execute --bindmounts `pwd` -- make-jpkg.sh `pwd` `ls jdk-*-x64.bin |sort -nr | head -1`
DIST=wheezy ARCH=i386 pbuilder --execute --bindmounts `pwd` -- make-jpkg.sh `pwd` `ls jdk-*-i586.bin |sort -nr | head -1`
