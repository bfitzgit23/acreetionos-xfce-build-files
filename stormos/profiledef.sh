#!/usr/bin/env bash
# shellcheck disable=SC2034

iso_name="StormOS-Vida-XFCE"
iso_label="StormOS_Vida_XFCE_$(date --date="@${SOURCE_DATE_EPOCH:-$(date +%s)}" +%Y%m)"
iso_publisher="StormOS <https://www.storm-os.com>"
iso_application="StormOS-Vida install medium"
iso_version="$(date --date="@${SOURCE_DATE_EPOCH:-$(date +%s)}" +%Y.%m.%d)"
install_dir="arch"
bootmodes=('bios.syslinux.mbr' 'bios.syslinux.eltorito' 'uefi-ia32.grub.esp' 'uefi-x64.grub.esp'
           'uefi-ia32.grub.eltorito' 'uefi-x64.grub.eltorito')
arch="x86_64"
pacman_conf="pacman.conf"
airootfs_image_type="squashfs"
airootfs_image_tool_options=('-comp' 'zstd' '-Xcompression-level' '15' '-b' '1M' )
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
  ["/usr/bin/StormOS_SR_v4.6_hybrid_public"]="0:0:777"
  ["/usr/bin/axelc8"]="0:0:777"
  ["/usr/bin/stormos-kernel-manager"]="0:0:777"
  ["/usr/share/archlinux-kernel-manager/archlinux-kernel-manager.py"]="0:0:777"
  ["/usr/bin/StormOS_Reflector"]="0:0:777"
  ["/usr/bin/wgetm"]="0:0:7775"
  ["/usr/bin/pdetect"]="0:0:777"
  ["/usr/bin/StormOS_Download_Manager"]="0:0:777"
  ["/usr/bin/StormOS_Package_Manager"]="0:0:777"
  ["/usr/bin/calamares2.sh"]="0:0:777"
  ["/usr/bin/sib"]="0:0:777"
  ["/etc/shadow"]="0:0:400"
  ["/etc/gshadow"]="0:0:400"
  ["/abif-master/abif"]="0:0:777"
  ["/root/.ssh"]="0:0:0700"
  ["/root/.ssh/authorized_keys"]="0:0:0600"
)
