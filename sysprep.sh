#!/bin/bash
yum clean all
rm -f /etc/udev/rules.d/70-persistent-net.rules
DEVICE=eth[x] BOOTPROTO=none ONBOOT=yes #NETWORK=192.0.0.0 <- REMOVE #NETMASK=255.255.255.0 <- REMOVE #IPADDR=192.0.0.0 <- REMOVE #HWADDR=xx:xx:xx:xx:xx <- REMOVE #USERCTL=no <- REMOVE # Remove any other *unique or non-desired settings, such as UUID.*
DEVICE=eth[x] BOOTPROTO=dhcp ONBOOT=yes
rm -rf /etc/ssh/ssh_host_example
rm -rf /etc/lvm/devices/system.devices
yum makecache
echo "yum makecache is completed"
echo "The sysprep is completed, This Machine is shutting down right now"
bash -c "sleep 2; shutdown -h now"&
rm ~/.bash_history
