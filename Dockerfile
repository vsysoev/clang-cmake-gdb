FROM clangbuiltlinux/ubuntu:latest
LABEL org.opencontainers.image.source=https://github.com/vsysoev/clang-cmake-gdb

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get full-upgrade -y
RUN apt-get -y install --no-install-suggests --no-install-recommends \
    cmake gdb libncurses5-dev libasound2-dev
RUN apt-get -y install --no-install-suggests --no-install-recommends \
    libfreetype6-dev libfontconfig1-dev
RUN ln -s /usr/include/locale.h /usr/include/xlocale.h