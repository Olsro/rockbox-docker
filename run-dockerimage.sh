#!/bin/bash
cd "$(dirname "$0")"
VOLUMEFOLDERPATH=$(realpath rockbox-git)
#docker run -it --rm -v "$VOLUMEFOLDERPATH":/usr/src/rockbox --name rockboxgetbuild rockbox /bin/bash
docker run --rm -v "$VOLUMEFOLDERPATH":/usr/src/rockbox --name rockboxgetbuild rockbox /usr/src/rockbox/build.sh
echo "Script ended, enjoy your artifacts"
