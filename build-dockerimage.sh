#!/bin/bash
cd "$(dirname "$0")"
# Clone official rockbox repo if the folder does not exist
[ -d rockbox-git/rockbox ] || git clone https://github.com/Rockbox/rockbox.git rockbox-git/rockbox
docker build --no-cache --progress=plain -t rockbox .