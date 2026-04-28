setenv bootargs console=ttyO0,115200 root=/dev/mmcblk0p2 rw rootwait

load mmc 0:2 ${loadaddr} /boot/zImage
load mmc 0:2 ${fdtaddr} /boot/am335x-boneblack.dtb

bootz ${loadaddr} - ${fdtaddr}