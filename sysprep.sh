#!/bin/bash
yum clean all
sleep 5
rm -f /etc/udev/rules.d/70-persistent-net.rules
DEVICE=eth[x] BOOTPROTO=none ONBOOT=yes #NETWORK=192.0.2.0 <- REMOVE #NETMASK=255.255.255.0 <- REMOVE #IPADDR=192.0.2.1 <- REMOVE #HWADDR=xx:xx:xx:xx:xx <- REMOVE #USERCTL=no <- REMOVE # Remove any other *unique or non-desired settings, such as UUID.*
DEVICE=eth[x] BOOTPROTO=dhcp ONBOOT=yes
rm -rf /etc/ssh/ssh_host_example
rm -rf /etc/lvm/devices/system.devices
history -c
echo "The sysprep is completed, This Machine is shutting down"
init 0
