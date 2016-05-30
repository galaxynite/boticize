#!/bin/bash

### Install packages
apt-get update
apt-get install --no-install-recommends -y \
	sox libsox-fmt-all \
	alsa-utils \
	firmware-realtek firmware-ralink \
	ntpdate \
	openssh-server openssh-client \
	cifs-utils \
	nfs-common \
	dbus wireless-tools wpasupplicant \
	i2c-tools \
	acpid \
	cpufrequtils usbutils \
	less psmisc \
	python-alsaaudio \
	lirc \
	linux-image-4.5.0-botic7-rc1 \
	linux-libc-dev=4.5-botic7-rc1_armhf \
	linux-headers-4.5.0-botic7-rc1
