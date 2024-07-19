#/bin/bash
echo "Do you want to register this system with rhn-subscription..?"
read yes
read no
if [ "yes" == "$yes" ];
then
        subscription-manager register
        echo "The status of the registrtion is $?"
        echo "Do you want to attach the subcription-manager to attach this system..?"
        read yes
        subscription-manager attach --auto
	echo "The status of the attachment is $?"
elif [ "no" == "$no" ];
then
     exit
fi
