FROM ubuntu:22.04

# Install required tools
RUN apt-get update -y
RUN apt-get install -y build-essential libsdl1.2-dev zip unzip git texinfo automake libtool libtool-bin autoconf flex bison curl wget libgmp-dev

# Clone Rockbox
WORKDIR /usr/src
RUN git clone https://github.com/Rockbox/rockbox.git
WORKDIR /usr/src/rockbox/build

# Apply fixes for Flash Storage for the iPod Minis
RUN sed -i 's@#define HAVE_ATA_POWER_OFF@//#define HAVE_ATA_POWER_OFF@g' ../firmware/export/config/ipodmini1g.h
RUN sed -i 's@#define HAVE_DISK_STORAGE@#define HAVE_FLASH_STORAGE@g' ../firmware/export/config/ipodmini1g.h
RUN sed -i 's@#define HAVE_ATA_POWER_OFF@//#define HAVE_ATA_POWER_OFF@g' ../firmware/export/config/ipodmini2g.h
RUN sed -i 's@#define HAVE_DISK_STORAGE@#define HAVE_FLASH_STORAGE@g' ../firmware/export/config/ipodmini2g.h

# Configure dev environment
RUN ../tools/rockboxdev.sh --target=a

# FullZip for iPod Mini 1G
RUN ../tools/configure --target=25
RUN make -j && make fullzip
RUN mv rockbox-full.zip ipodmini1g-rockbox-full.zip

# FullZip for iPod Mini 2G
RUN ../tools/configure --target=26
RUN make clean && make -j && make fullzip
RUN mv rockbox-full.zip ipodmini2g-rockbox-full.zip

WORKDIR /