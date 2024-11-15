#!/bin/bash
cd "$(dirname "$0")"
SRC_FOLDER_PATH=$(realpath rockbox-git)
#docker run -it --rm -v "$SRC_FOLDER_PATH":/usr/src/rockbox --name rockboxgetbuilds rockbox /bin/bash
docker run --rm -v "$SRC_FOLDER_PATH":/usr/src/rockbox --name rockboxgetbuilds rockbox /usr/src/rockbox/create-builds.sh
echo "Script ended, enjoy your artifacts"
