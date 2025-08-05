#!/bin/bash
echo "Do you want to shutdown this machine..?"
read yes
read no
if [ "yes" == "$yes" ]
then
    shutdown -h now
elif [ "no" == "$no" ]
then
     exit
fi