#!/bin/sh
echo "Usage : ./initialize_ovs.bash [reset]->optional"
cd ~/lgovs

# kill ovs process
kill `cd /usr/local/var/run/openvswitch && cat ovsdb-server.pid ovs-vswitchd.pid`


# reset ovsDB
echo "Reset OVS DataBase"
rm /usr/local/etc/openvswitch/conf.db
ovsdb-tool create /usr/local/etc/openvswitch/conf.db \
                vswitchd/vswitch.ovsschema
