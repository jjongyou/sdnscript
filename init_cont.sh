#!/bin/sh
ovs-vsctl set-controller fl tcp:10.0.0.100:6653
ovs-vsctl list controller
