#!/bin/bash

GroupName=`sudo less /etc/group | egrep -o .*_operator`

sudo chown -R administrator:administrator /opt/Project/ && sudo chmod -R ugo+rwx /opt/Project/ && sudo chmod -R o-rwx /opt/Project/ && sudo setfacl -R -m g:$GroupName:rwx /opt/Project/
if [ $? -eq 0 ];
then echo "OK"
else echo "ОШИБКА!!!"
fi
