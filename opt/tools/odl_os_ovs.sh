#!/usr/bin/env bash
if [ `whoami` != "root" ]; then
echo Please execute this script as superuser or with sudo previleges.
exit 1
fi
 
if [ "$#" -ne 1 ]; then
echo "Usage: odl_ovs_os.sh <tunnel-endpoint-ip-address>" >&2
echo " <tunnel-endpoint-ip-address> is same as the local-ip configuration done for ovs-neutron-agent in ovs_quantum_plugin.ini"
exit 1
fi
 
ovs-vsctl set-manager ptcp:6640
read ovstbl <<< $(ovs-vsctl get Open_vSwitch . _uuid)
#ovs-vsctl set Open_vSwitch $ovstbl other_config={"local_ip"="$1"}
sudo ovs-vsctl set Open_vSwitch $ovstbl other_config:bridge_mappings=physnet1:eth1,physnet3:eth3
sudo ovs-vsctl set Open_vSwitch $ovstbl other_config:local_ip=$1
ovs-vsctl list Open_vSwitch .

