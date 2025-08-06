#!/bin/bash
echo "Removing the old Linux kernel"
echo "$(dnf -y remove --oldinstallonly --setopt installonly_limit=2 kernel)"
sleep 10
echo "The old kernel has been removed and the system is rebooting now"
echo "The old kernel has been removed and the system is rebooting now"
echo "The old kernel has been removed and the system is rebooting now"
reboot

#curl https://raw.githubusercontent.com/balar2207/Linux-VMs-scripts/refs/heads/main/Old-Kernel_remove.sh | bash
