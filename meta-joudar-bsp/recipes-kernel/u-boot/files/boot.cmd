# Variable par défaut si absente
if test -z "${boot_part}"; then
    setenv boot_part A
fi

echo "Booting from slot ${boot_part}"

# Choix du slot
if test "${boot_part}" = "A"; then
    setenv bootpart 1
    setenv rootpart 3
else
    setenv bootpart 2
    setenv rootpart 4
fi

# Charger kernel + dtb depuis partition boot
load mmc 0:${bootpart} ${kernel_addr_r} zImage
load mmc 0:${bootpart} ${fdt_addr_r} am335x-boneblack.dtb

# Arguments kernel
setenv bootargs console=ttyO0,115200 root=/dev/mmcblk0p${rootpart} rw rootwait

# Boot
bootz ${kernel_addr_r} - ${fdt_addr_r}