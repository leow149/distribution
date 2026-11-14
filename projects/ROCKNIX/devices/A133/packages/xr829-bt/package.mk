# SPDX-License-Identifier: GPL-2.0
# Copyright (C) 2026-present ROCKNIX (https://github.com/ROCKNIX)

PKG_NAME="xr829-bt"
PKG_VERSION="1.0"
PKG_LICENSE="GPL"
PKG_SITE=""
PKG_URL=""
PKG_DEPENDS_TARGET="toolchain a133-firmware"
PKG_LONGDESC="XR829 Bluetooth firmware uploader and HCI UART attach"
PKG_TOOLCHAIN="manual"

make_target() {
  ${CC} ${CFLAGS} ${LDFLAGS} -o xr829_bt_up ${PKG_DIR}/sources/xr829_bt_up.c
}

makeinstall_target() {
  mkdir -p ${INSTALL}/usr/bin
    cp xr829_bt_up ${INSTALL}/usr/bin
    cp ${PKG_DIR}/sources/xr829-bt-up ${INSTALL}/usr/bin
    chmod 0755 ${INSTALL}/usr/bin/xr829-bt-up
}

post_install() {
  enable_service xr829-bt.service
}
