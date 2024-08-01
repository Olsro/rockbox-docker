FROM ubuntu:24.04

# Install required tools
RUN apt-get update -y
RUN apt-get install -y build-essential libsdl1.2-dev zip unzip git texinfo automake libtool libtool-bin autoconf flex bison curl wget libgmp-dev

# Configure Rockbox dev environment
COPY rockbox-git/rockbox/tools /tmp/rockboxtools
RUN /tmp/rockboxtools/rockboxdev.sh --target=a
RUN rm -rf /tmp/rockboxtools