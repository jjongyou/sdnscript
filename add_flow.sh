#!/bin/sh
# Test1
# ovs-ofctl add-flow fleft ip,nw_src=0.0.0.0,nw_dst=255.255.255.255,actions=drop
# ovs-ofctl add-flow fleft arp,actions=drop
# ovs-ofctl add-flow fleft ip,nw_src=10.0.0.1,nw_dst=10.0.0.2,actions=enx00e04c360253

# Test2
# ovs-ofctl --protocols=OpenFlow13 add-flow fleft ip,nw_src=10.0.0.1,nw_dst=10.0.0.2,actions=enx00e04c360278

# Test3
ovs-ofctl --protocols=OpenFlow13 add-flow fleft in_port=enx00e04c3602ec,dl_src=00:e0:4c:36:02:dc,dl_dst=00:e0:81:37:48:f3,actions=output:enx00e04c360253
ovs-ofctl --protocols=OpenFlow13 add-flow fleft in_port=enx00e04c360253,dl_src=00:e0:81:37:48:f3,dl_dst=00:e0:4c:36:02:dc,actions=output:enx00e04c3602ec

ovs-ofctl --protocols=OpenFlow13 add-flow fleft priority=10,udp,in_port=enx00e04c3602ec,nw_dst=10.0.0.2,udp_dst=5201,actions=output:enx00e04c360278,set_queue:2

ovs-ofctl --protocols=OpenFlow13 add-flow fleft priority=10,tcp,in_port=enx00e04c3602ec,nw_dst=10.0.0.2,tp_dst=5201,actions=output:enx00e04c360278,set_queue:1
