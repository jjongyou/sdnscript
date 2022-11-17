#!/bin/sh
sudo ovs-ofctl -O openflow$1 dump-flows $2
