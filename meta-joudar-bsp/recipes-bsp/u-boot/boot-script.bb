SUMMARY = "Boot script for U-Boot"
ESCRIPTION = "Boot script for U-Boot"
LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302"

# SRC_URI = "file://boot.cmd"

# S = "${WORKDIR}"

# DEPENDS += "u-boot-tools-native"

# do_compile() {
#     mkimage -A arm -T script -C none -n "boot script" \
#         -d ${WORKDIR}/boot.cmd ${WORKDIR}/boot.scr
# }

# do_install() {
#     install -d ${D}/boot
#     install -m 0644 ${WORKDIR}/boot.scr ${D}/boot/
# }