#!/bin/sh
ovs-vsctl --if-exist del-br fl
ovs-vsctl add-br fl
ovs-vsctl set bridge fl protocols=OpenFlow13 other-config:disable-in-band=false  other-config:hwaddr=00:00:00:00:00:02
ifconfig fl inet 10.0.0.102 netmask 255.255.255.0

# to fr Switch Link
ovs-vsctl add-port fl enx00e0813748b2

# to rl Switch Link
ovs-vsctl add-port fl enx00e0813748ba

# to Controller Link
ovs-vsctl add-port fl enx00e04c360278


ovs-vsctl show
ovs-dpctl show
