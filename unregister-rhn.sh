#/bin/bash
echo "Do you want to remove the rhn-subsription for this machine..?"
read yes
if [ "yes" == "$yes" ];
then
        subscription-manager remove --all
        subscription-manager unregister
elif [ "no" ==  "$no" ];
then
        exit
fi
~
