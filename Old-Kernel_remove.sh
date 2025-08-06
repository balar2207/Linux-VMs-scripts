#!/bin/bash

echo "$(dnf -y remove --oldinstallonly --setopt installonly_limit=2 kernel)"
sleep 10
echo "The old kernel has been removed and the system is rebooting now"
reboot



#sleep 5
#sed -i 's/\r$//' Old-Kernel_remove.sh
#chmod +x Old-Kernel_remove.sh
#echo "$(./Old-Kernel_remove.sh)"
#echo "Removing the old Kenrnel"
#sleep 20
#rm -rf ld-Kernel_remove.sh


#echo "$(curl -O https://github.com/balar2207/Linux-VMs-scripts/blob/main/Old-Kernel_remove.sh)"
