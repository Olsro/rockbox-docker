# Build the image then run it
docker build -t rockbox .
docker rm rockboxgetbuild
docker run --name rockboxgetbuild rockbox /bin/bash

# So you can check that config files have been successfully patched
#rm ipodmini*.h
#docker cp rockboxgetbuild:/usr/src/rockbox/firmware/export/config/ipodmini1g.h .
#docker cp rockboxgetbuild:/usr/src/rockbox/firmware/export/config/ipodmini2g.h .

# The zip to be copied on your device
rm ipodmini*.zip
docker cp rockboxgetbuild:/usr/src/rockbox/build/ipodmini1g-rockbox-full.zip .
docker cp rockboxgetbuild:/usr/src/rockbox/build/ipodmini2g-rockbox-full.zip .

# Clear container
docker rm rockboxgetbuild

echo "Script ended, enjoy your artifacts"
