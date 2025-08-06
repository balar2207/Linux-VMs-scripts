#!/bin/bash
echo "Executing: Creating Dir under /usr/local/tomcat9/webapps $(mkdir -p /usr/local/tomcat9/webapps)"
echo "Executing: Creating Dir under /var/www/html/repos $(mkdir -p /var/www/html/repos)"
echo "Executing: Mounting Volume on /usr/local/tomcat9/webapps $(sed -i -e '$aUUID=f77aa4ea-246b-49c1-9e5a-2236948660f5 /usr/local/tomcat9/webapps ext4 defaults        0 0' /etc/fstab)"
echo "Executing: Mounting Volume on /var/www/html/repos ext4 defaults $(sed -i -e '$aUUID=bdd4f5aa-5796-4104-ae57-44eaf421d757 /var/www/html/repos ext4 defaults        0 0' /etc/fstab)"
echo "Executing: Reloading the daemon $(systemctl daemon-reload)"
echo "Executing: Mounting the Volumes $(mount -a)"
echo "Both the Tomcat and HTTPd volumes are mounted persistenlty"
echo "Executing: $(systemctl daemon-reload)"
echo "Executing: $(df -Th)"
#curl https://raw.githubusercontent.com/balar2207/Operating-System-Related/refs/heads/main/Linux-VMs-scripts/tomcat-http-Vol_mount.sh?token=GHSAT0AAAAAADIW37DRATJ5Y6B4YKHRUIG22ETPIEA |bash
