#!/bin/bash

### Install packages
apt-get install --no-install-recommends -y \
    linux-libc-dev=4.5-botic7-rc1_armhf \
    linux-headers-4.5.0-botic7-rc1 \
    make gcc-4.8
