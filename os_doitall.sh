#!/bin/bash

source openrc admin admin

/opt/tools/os_addnano.sh
sleep 1
/opt/tools/os_addadminkey.sh
sleep 1
#/opt/tools/os_addagg.sh
sleep 1
/opt/tools/os_addnet.sh
sleep 1
/opt/tools/os_createimage.sh
sleep 1
/opt/tools/os_createsecuritygroups.sh
sleep 1
/opt/tools/os_addvms.sh
sleep 5
#/opt/tools/os_addnet1.sh
#sleep 5
#/opt/tools/os_addvms1.sh
#sleep 5
#/opt/tools/os_addrtrsr.sh
#sleep 5
#/opt/tools/os_addextnet.sh
#sleep 5
#/opt/tools/os_addfloatingipssr.sh
#sleep 1
#/opt/tools/os_addsecuritygroups.sh
