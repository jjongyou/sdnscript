#!/bin/sh
# How to Destroy QoS
# First destroy queues in QoS
# 1) ovs-vsctl clear qos 50f4da86-bac0-427e-881f-2a09fd88ddf7 queues
# Second destroy qos in port
# 2) ovs-vsctl clear port enx00e04c360278 qos
# Third destroy all qos
# 3) ovs-vsctl --all destroy qos

# f-lr : enx00e04c360253
# cf-l : enx00e04c360278

ovs-vsctl clear port enx00e04c360278 qos
ovs-vsctl -- --all destroy QoS
ovs-vsctl -- --all destroy Queue
