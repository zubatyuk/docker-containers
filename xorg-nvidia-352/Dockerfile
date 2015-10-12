FROM ubuntu:trusty
MAINTAINER Roman Zubatyuk <zubatyuk@gmail.com>

RUN apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
         software-properties-common

RUN     apt-add-repository -y ppa:graphics-drivers/ppa \
    &&  apt-add-repository -y ppa:xorg-edgers/ppa

RUN apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
          nvidia-352 libcuda1-352 nvidia-settings libgl1-mesa-dri xfonts-base xauth \
          nvidia-opencl-icd-352 xfonts-100dpi xfonts-75dpi xfonts-scalable \
          mesa-vdpau-drivers vdpauinfo xinit mesa-utils gpointing-device-settings \
          xinput xserver-xorg-input-kbd xfonts-cyrillic x11-utils xbitmaps xserver-xorg \
    && rm -rf /var/lib/apt/lists/* /var/cache/apt/*

RUN echo "allowed_users=anybody" > /etc/X11/Xwrapper.config
