#!/bin/bash

### Install packages
apt-get update
apt-get install --no-install-recommends -y \
	
	linux-image-4.8.13-botic7-rc3_1_armhf.deb \
	linux-libc-dev_4.5-botic7-rc1_armhf.deb \
	linux-headers-4.8.13-botic7-rc3_1_armhf.deb
