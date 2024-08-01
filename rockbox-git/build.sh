#!/bin/bash
cd /tmp
mkdir -p /usr/src/rockbox/artifacts

# FullZip for iPod Mini 1G
/usr/src/rockbox/rockbox/tools/configure --target=25
make clean && make -j && make fullzip
mv rockbox-full.zip /usr/src/rockbox/artifacts/ipodmini1g-rockbox-full.zip

# FullZip for iPod Mini 2G
/usr/src/rockbox/rockbox/tools/configure --target=26
make clean && make -j && make fullzip
mv rockbox-full.zip /usr/src/rockbox/artifacts/ipodmini2g-rockbox-full.zip
