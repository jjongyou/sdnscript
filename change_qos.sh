#!/bin/sh
# f-lr : enx00e04c360253
# cf-l : enx00e04c360278
ovs-vsctl -- set port enx00e04c360278 qos=@newqos -- --id=@newqos create qos type=linux-htb other-config:max-rate=100000000 queues:0=@q0 queues:1=@q1 queues:2=@q2 queues:3=@q3 queues:4=@q4 queues:5=@q5 queues:6=@q6 queues:7=@q7 -- \
--id=@q0 create queue other-config:min-rate=100000 other-config:max-rate=1000000 -- \
--id=@q1 create queue other-config:min-rate=200000 other-config:max-rate=1000000 -- \
--id=@q2 create queue other-config:min-rate=300000 other-config:max-rate=1000000 -- \
--id=@q3 create queue other-config:min-rate=400000 other-config:max-rate=1000000 -- \
--id=@q4 create queue other-config:min-rate=50000000 other-config:max-rate=100000000 -- \
--id=@q5 create queue other-config:min-rate=60000000 other-config:max-rate=100000000 -- \
--id=@q6 create queue other-config:min-rate=70000000 other-config:max-rate=100000000 -- \
--id=@q7 create queue other-config:min-rate=80000000 other-config:max-rate=100000000

#ovs-vsctl -- set port enx00e04c360278 qos=@newqos -- --id=@newqos create qos type=linux-htb other-config:max-rate=100000000 queues:0=@q0 queues:1=@q1 queues:2=@q2 queues:3=@q3 queues:4=@q4 queues:5=@q5 queues:6=@q6 queues:7=@q7 -- \
#--id=@q0 create queue other-config:min-rate=100000 other-config:max-rate=100000000 -- \
#--id=@q1 create queue other-config:min-rate=100000 other-config:max-rate=300000 -- \
#--id=@q2 create queue other-config:min-rate=100000 other-config:max-rate=400000 -- \
#--id=@q3 create queue other-config:min-rate=100000 other-config:max-rate=500000 -- \
#--id=@q4 create queue other-config:min-rate=100000 other-config:max-rate=60000000 -- \
#--id=@q5 create queue other-config:min-rate=100000 other-config:max-rate=70000000 -- \
#--id=@q6 create queue other-config:min-rate=100000 other-config:max-rate=80000000 -- \
#--id=@q7 create queue other-config:min-rate=100000 other-config:max-rate=90000000
