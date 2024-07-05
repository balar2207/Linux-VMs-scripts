#!/bin/bash
dnf makecache
sleep 70
dnf install epel-release -y
sleep 10
dnf install xrdp -y
sleep 20
systemctl start xrdp
systemctl enable --now xrdp
systemctl enable xrdp
firewall-cmd --permanent --add-port=3389/tcp
firewall-cmd --reload
sleep 10
crontab -r
rm -rf /root/xrdp.sh
