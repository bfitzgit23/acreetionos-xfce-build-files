#!/bin/bash -e
#
##############################################################################
#
#  PostInstall is free software; you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation; either version 3 of the License, or
#  (at your discretion) any later version.
#
#  PostInstall is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
##############################################################################

# clean out archiso files from install
rm -f /etc/sudoers.d/g_wheel
rm -f /etc/polkit-1/rules.d/49-nopasswd_global.rules
rm /root/{.automated_script.sh,.zlogin}
rm -r /etc/initcpio

echo "FONT=ter-p16n" >> /etc/vconsole.conf

# Get the actual home directory of the real user (not root)
REAL_HOME=$(getent passwd $(logname) | cut -d: -f6)

rm -rf /usr/share/calamares
#!/bin/bash -e

# ... [previous parts of the script remain unchanged]

# Get the actual home directory of the real user (not root)
REAL_HOME=$(getent passwd $(logname) | cut -d: -f6)

# Remove desktop files
rm -rf "${REAL_HOME}/Desktop/calamares.desktop"

# Remove autostart files
rm -rf "${REAL_HOME}/.config/autostart/calamares.desktop"
rm -rf "${REAL_HOME}/.config/autostart/NetworkManager.desktop"

# ... [rest of the script remains unchanged]
rm /usr/share/applications/calamares.desktop

plymouth-set-default-theme acreetionos-xfce

# Remove the script itself
rm "$0"
