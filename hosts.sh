#!/bin/bash
rm -rf /etc/hosts
cd /etc/
curl -O https://raw.githubusercontent.com/balar2207/Linux-VMs-scripts/refs/heads/main/hosts
sleep 5
chmod 644 hosts

# Below Query to execute on GuestOS Level as cronjob
# @reboot sleep 5; curl https://raw.githubusercontent.com/balar2207/Linux-VMs-scripts/refs/heads/main/hosts.sh | bash
