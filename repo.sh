#!/bin/bash
yum makecache
sleep 90
crontab -r
rm -rf /root/repo.sh
