#!/bin/sh
ovs-appctl qos/show enx00e04c360278
tc class show dev enx00e04c360278
ovs-ofctl -O openflow13 queue-stats fleft
