dnf -y remove --oldinstallonly --setopt installonly_limit=2 kernel
sleep 10
echo "The old kernel has been removed and the system is rebooting now"
reboot
