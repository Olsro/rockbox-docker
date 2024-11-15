#!/bin/bash
cd /tmp

# Database tool for iPod Mini 2G
/usr/src/rockbox/rockbox/tools/configure --target=26 --type=D
make clean && make -j
yes | cp -rf ./database.ipodmini2g /mnt/dap/databasetool
cd /mnt/dap
# Remove previous databases
rm /mnt/dap/.rockbox/*.tcd
# Create database
/mnt/dap/databasetool
# Remove the tool
rm /mnt/dap/databasetool
