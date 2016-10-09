#!/system/bin/sh
if [ -f /system/etc/recovery-transform.sh ]; then
  exec sh /system/etc/recovery-transform.sh 11714560 58c863490702e378bda72dd1429e2c045a21563c 8955904 7b94666d26d45b01c4c6c1df0c64e54705b90744
fi

if ! applypatch -c EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery:11714560:58c863490702e378bda72dd1429e2c045a21563c; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/msm_sdcc.1/by-name/boot:8955904:7b94666d26d45b01c4c6c1df0c64e54705b90744 EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery 58c863490702e378bda72dd1429e2c045a21563c 11714560 7b94666d26d45b01c4c6c1df0c64e54705b90744:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
