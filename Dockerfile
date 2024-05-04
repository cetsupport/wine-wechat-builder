FROM ubuntu:24.04

ENV DEBIAN_FRONTEND noninteractive

# according to: https://wiki.winehq.org/Building_Wine#Satisfying_Build_Dependencies
RUN dpkg --add-architecture i386 \
	&& apt-get update -y \
	&& apt-get install -y \
    make gcc ccache gcc-mingw-w64 pkg-config git wget locales tzdata apt-utils \
	gcc-multilib flex bison	oss4-dev \
	libasound2-dev libpulse-dev libdbus-1-dev libfontconfig-dev \
	libasound2-dev:i386 libpulse-dev:i386 libdbus-1-dev:i386 libfontconfig-dev:i386 \
	libfreetype-dev libgnutls28-dev libgl-dev libunwind-dev \
	libfreetype-dev:i386 libgnutls28-dev:i386 libgl-dev:i386 libunwind-dev:i386 \
	libx11-dev libxcomposite-dev libxcursor-dev libxfixes-dev \
	libx11-dev:i386 libxcomposite-dev:i386 libxcursor-dev:i386 libxfixes-dev:i386 \
	libxi-dev libxrandr-dev libxrender-dev libxext-dev \
	libxi-dev:i386 libxrandr-dev:i386 libxrender-dev:i386 libxext-dev:i386 \
	libgstreamer1.0-dev	libosmesa6-dev libsdl2-dev libudev-dev libvulkan-dev \
	libgstreamer1.0-dev:i386 libosmesa6-dev:i386 libsdl2-dev:i386 libudev-dev:i386 libvulkan-dev:i386 \
	libcapi20-dev libcups2-dev libgphoto2-dev libsane-dev \
	libcapi20-dev:i386 libcups2-dev:i386 libgphoto2-dev:i386 libsane-dev:i386 \
	samba-dev ocl-icd-opencl-dev \
	samba-dev:i386 ocl-icd-opencl-dev:i386 \
	libusb-1.0-0-dev libv4l-dev libxxf86vm-dev libxinerama-dev \
	libusb-1.0-0-dev:i386 libv4l-dev:i386 libxxf86vm-dev:i386 libxinerama-dev:i386 \
	wayland-scanner++ libxkbregistry0 libxkbregistry-dev \
	libxkbregistry0:i386 libxkbregistry-dev:i386 \
	gettext libgettextpo-dev libkrb5-dev libpcap-dev libgstreamer-plugins-base1.0-dev libv4l-dev

RUN apt-get update -y \
	&& apt-get clean \
    && rm -rf /var/lib/apt/lists/*
