#!/bin/bash
cd /tmp
mkdir -p /usr/src/rockbox/artifacts

# FullZip for iPod Classic 4G Black & White
/usr/src/rockbox/rockbox/tools/configure --target=24 --type=N
make clean && make -j && make fullzip
mv rockbox-full.zip /usr/src/rockbox/artifacts/ipodclassic4gbw-rockbox-full.zip

# FullZip for iPod Classic 5G (Video)
/usr/src/rockbox/rockbox/tools/configure --target=22 --type=N
make clean && make -j && make fullzip
mv rockbox-full.zip /usr/src/rockbox/artifacts/ipodclassic5g-rockbox-full.zip

# FullZip for iPod Mini 1G
#/usr/src/rockbox/rockbox/tools/configure --target=25 --type=N
#make clean && make -j && make fullzip
#mv rockbox-full.zip /usr/src/rockbox/artifacts/ipodmini1g-rockbox-full.zip

# FullZip for iPod Mini 2G
/usr/src/rockbox/rockbox/tools/configure --target=26 --type=N
make clean && make -j && make fullzip
mv rockbox-full.zip /usr/src/rockbox/artifacts/ipodmini2g-rockbox-full.zip
