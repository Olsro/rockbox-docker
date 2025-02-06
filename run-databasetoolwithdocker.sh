#!/bin/bash
if [ $# -eq 0 ]; then
 echo "Argument should be the path to your DAP root folder"
 exit 1
fi
cd "$(dirname "$0")"
DAP_ROOT_FOLDER=$1
SRC_FOLDER_PATH=$(realpath rockbox-git)
docker run --rm -v "$SRC_FOLDER_PATH":/usr/src/rockbox -v "$DAP_ROOT_FOLDER":/mnt/dap --name rockboxdatabasetool$(($RANDOM)) rockbox /usr/src/rockbox/databasetool.sh
echo "Script ended"
