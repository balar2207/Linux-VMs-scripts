Notes:
1) -bash: ./sysprep.sh: /bin/bash^M: bad interpreter: No such file or directory: "sed -i 's/\r$//' sysprep.sh"


dnf -y remove --oldinstallonly --setopt installonly_limit=1 kernel
/etc/NetworkManager/system-connections/
nmcli connection show
