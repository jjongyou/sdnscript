#!/bin/sh
# ovs-ofctl --protocols=OpenFlow13 add-flow fleft tcp,in_port=enx00e04c3602ec,tp_dst=5201,actions=output:enx00e04c360278,set_queue:$1


# ovs-ofctl --protocols=OpenFlow13 mod-flows fleft in_port=enx00e04c360253,dl_src=00:e0:4c:36:00:06,dl_dst=00:e0:81:37:48:f3,actions=output:enx00e04c360278,set_queue:2

# ovs-ofctl --protocols=OpenFlow13 mod-flows fleft in_port=enx00e04c3602ec,dl_src=00:e0:4c:36:02:dc,dl_dst=00:e0:81:37:48:f3,actions=output:enx00e04c360278,set_queue:7

#ovs-ofctl --protocols=OpenFlow13 mod-flows fleft in_port=enx00e04c360253,dl_src=00:e0:4c:36:00:06,dl_dst=00:e0:81:37:48:f3,actions=set_queue:1,output=enx00e04c360278

# ovs-ofctl --protocols=OpenFlow13 mod-flows fleft in_port=enx00e04c3602ec,dl_src=00:e0:4c:36:02:dc,dl_dst=00:e0:81:37:48:f3,actions=set_queue:7,output=enx00e04c360278
ovs-ofctl --protocols=OpenFlow13 mod-flows fleft in_port=enx00e04c3602ec,dl_src=00:e0:4c:36:02:dc,dl_dst=00:e0:81:37:48:f3,actions=set_queue:$1,output=enx00e04c360278
