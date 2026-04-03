#!/bin/bash
sudo apt update && sudo apt upgrade -y
sudo apt autoremove -y && sudo apt clean

sudo rm -f /etc/ssh/ssh_host_*
sudo truncate -s 0 /etc/machine-id
sudo rm -f /var/lib/dbus/machine-id

sudo apt install -y cloud-init
sudo cloud-init clean

sudo rm -f /etc/netplan/*.yaml
sudo rm -rf /var/log/* /tmp/* /var/tmp/*

history -c
rm -f ~/.bash_history

sudo dd if=/dev/zero of=/EMPTY bs=1M || true
sudo rm -f /EMPTY

sudo poweroff
