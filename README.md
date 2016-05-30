# Boticize
Scripts for adding Botic support into Debian based distribution

## Installation

Make sure that there is at least 200MB of free space on the root filesystem of BBB.

> df -h /

If there is not enough space, resize/extend partition if possible. Check the manual of your distro for the instructions.

Then proceed with executing following 5 scripts:

Check the time on the BBB, change it manually if it does not match

> bash 00-checktime.sh

Add a Botic repository:

> bash 01-addrepos.sh

Install packages from Botic repository:

> bash 02-install.sh

Enable shutdown on Power button press:

> bash 03-enablepm.sh

Enables time update from network, fixes CPU frequency to 1GHz:

> bash 04-customsw.sh

If you are going to compile kernel modules then install also kernel
headers, compiler and other tools.

> bash 05-develsw.sh

## Verify configuration before the reboot

Locate the correct boot configuration file, check if there is a line starting with dtb=

> nano /boot/uEnv.txt

If the "dtb=" is not there, then check also the alternative location:

> mount /boot/uboot

> nano /boot/uboot/uEnv.txt

In the uEnv.txt file check the following, and fix if needed:

Kernel selection:

> uname_r=4.5.0-botic7-rc1

Configuration file for normal Botic driver version:

> dtb=am335x-boneblack-botic.dtb

 Configuration file for Botic driver with I2C control of ESS Sabre32 ES9018 DAC (stereo only) via isolated I2C header of Hermes-BBB:

> dtb=am335x-boneblack-botic-sabre32.dtb

## Reboot and the final check

> sync

> reboot

After the reboot, login again and check the kernel version:

> root@botic:~# uname -r

> 4.5.0-botic7-rc1

And the presence of Botic audio device (in following example the sabre32 is configured):

> root@botic:~# aplay -l

> **** List of PLAYBACK Hardware Devices ****

> card 0: Botic [Botic], device 0: external sabre32-hifi-0 []

>   Subdevices: 1/1

>   Subdevice #0: subdevice #0
