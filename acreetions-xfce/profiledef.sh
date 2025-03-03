#!/usr/bin/env bash
# shellcheck disable=SC2034

iso_name="AcreetionOS-XFCE"
iso_label="AcreetionOS_XFCE_$(date --date="@${SOURCE_DATE_EPOCH:-$(date +%s)}" +%Y%m)"
iso_publisher="AcreetionOS <https://techcafe757.wixsite.com/storm-os>"
iso_application="AcreetionOS install medium"
iso_version="$(date --date="@${SOURCE_DATE_EPOCH:-$(date +%s)}" +%Y.%m.%d)"
install_dir="arch"
bootmodes=('bios.syslinux.mbr' 'bios.syslinux.eltorito' 'uefi-ia32.grub.esp' 'uefi-x64.grub.esp'
           'uefi-ia32.grub.eltorito' 'uefi-x64.grub.eltorito')
arch="x86_64"
pacman_conf="pacman.conf"
airootfs_image_type="squashfs"
airootfs_image_tool_options=('-comp' 'zstd' '-b' '1M' '-Xcompression-level' '22' )
file_permissions=(
  ["/root"]="0:0:750"
  ["/root/.automated_script.sh"]="0:0:755"
  ["/usr/local/bin/postinstall.sh"]="0:0:755"
  ["/usr/local/bin/readme"]="0:0:755"
  ["/usr/local/bin/welcome"]="0:0:755"
  ["/usr/local/bin/stormos-before"]="0:0:777"
  ["/usr/local/bin/stormos-final"]="0:0:777"
  ["/usr/local/bin/upgrade"]="0:0:755"
  ["/usr/local/bin/postinstall.sh"]="0:0:777"	
  ["/usr/bin/axelc8"]="0:0:777"
  ["/usr/bin/wgetm"]="0:0:777"
  ["/usr/bin/pdetect"]="0:0:777"
  ["/usr/bin/calamares2.sh"]="0:0:777"
  ["/etc/shadow"]="0:0:400"
  ["/etc/gshadow"]="0:0:400"
  ["/usr/local/bin/keyfix"]="0:0:777"
  ["/root/.ssh"]="0:0:0700"
  ["/root/.ssh/authorized_keys"]="0:0:0600"
)
