FROM ubuntu:22.04

# Install required tools
RUN apt-get update -y && apt-get install -y build-essential libsdl1.2-dev libsdl2-dev libsdl2-2.0-0 zip unzip git texinfo automake libtool libtool-bin autoconf flex bison curl wget libgmp-dev libmpfr-dev libgmp3-dev libmpc-dev

# Configure Rockbox dev environment
COPY rockbox-git/rockbox/tools /tmp/rockboxtools

# I advise to comment any target that you do not need, it will build much faster. "a" is for ipods.
#RUN /tmp/rockboxtools/rockboxdev.sh --target="m"
# "a" is the target for ipods
RUN /tmp/rockboxtools/rockboxdev.sh --target="a"
#RUN /tmp/rockboxtools/rockboxdev.sh --target="i"
# Targets "x" and "y" are failing for an unknown reason. Don't enable those excepted if you try to debug them.
#RUN /tmp/rockboxtools/rockboxdev.sh --target="x"
#RUN /tmp/rockboxtools/rockboxdev.sh --target="y"

RUN rm -rf /tmp/rockboxtools
