#!/bin/sh
# ./openvswitch-2.15.4/utilities/ovs-ctl start
ovsdb-server --remote=ptcp:6640 --remote=punix:/usr/local/var/run/openvswitch/db.sock --remote=db:Open_vSwitch,Open_vSwitch,manager_options --detach 
ovs-vswitchd --pidfile --detach
