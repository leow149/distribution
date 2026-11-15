# SPDX-License-Identifier: GPL-2.0
# Copyright (C) 2026-present ROCKNIX (https://github.com/ROCKNIX)

PKG_NAME="a133-firmware"
PKG_VERSION="1.0"
PKG_LICENSE="proprietary (see sources/NOTICE)"
PKG_SITE=""
PKG_URL=""
PKG_DEPENDS_TARGET="toolchain"
PKG_LONGDESC="PowerVR GE8300 GPU and XR829 Wi-Fi/Bluetooth firmware for Allwinner A133 devices"
PKG_TOOLCHAIN="manual"

makeinstall_target() {
  mkdir -p ${INSTALL}/$(get_full_firmware_dir)
    cp -a ${PKG_DIR}/sources/firmware/* ${INSTALL}/$(get_full_firmware_dir)
    cp ${PKG_DIR}/sources/LICENSE.powervr ${INSTALL}/$(get_full_firmware_dir)/powervr/
}
