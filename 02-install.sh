#!/bin/bash

### Install packages
apt-get update
apt-get install --no-install-recommends -y \
	sox libsox-fmt-all \
	alsa-utils \
	firmware-realtek firmware-ralink \
	ntpdate \
	cifs-utils \
	nfs-common \
	dbus wireless-tools wpasupplicant \
	i2c-tools \
	acpid \
	cpufrequtils usbutils \
	less psmisc \
	linux-image-4.5.0-botic7-rc1
