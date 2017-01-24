#!/bin/bash

vmip=$1

ns=qdhcp-$(neutron net-list | grep nfv_sriov | awk '{print $2}')
#ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no -i /home/odl/.ssh/id_rsa cirros@$1
#sudo ip netns exec qdhcp-1082db45-5c34-47d5-9c1e-de9314aa1b01 ping 10.100.5.4

sudo ip netns exec $ns ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no -i /home/stack/.ssh/id_rsa centos$vmip
