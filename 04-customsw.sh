#!/bin/bash

### Enable VIM editor
update-alternatives --install /usr/bin/vim vim /usr/bin/vim.tiny 10

### Install software without packages
cp -avf root/* /
systemctl enable ntpdate.service

