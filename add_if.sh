#!/bin/sh
ovs-vsctl set bridge fleft other-config:hwaddr=00:00:00:00:00:02
ifconfig fleft inet 10.0.0.102
