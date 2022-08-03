#!/bin/bash

if ! id | grep -q root; then
	echo "must be run as root"
	exit
fi

wdir="/opt/u-boot/bb-u-boot-am57xx-evm-beta"

if [ -b /dev/mmcblk0 ] ; then
	echo "dd if=${wdir}/MLO of=/dev/mmcblk0 count=2 seek=1 bs=128k"
	dd if=${wdir}/MLO of=/dev/mmcblk0 count=2 seek=1 bs=128k
	echo "dd if=${wdir}/u-boot-dtb.img of=/dev/mmcblk0 count=4 seek=1 bs=384k"
	dd if=${wdir}/u-boot-dtb.img of=/dev/mmcblk0 count=4 seek=1 bs=384k
fi
