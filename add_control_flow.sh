#!/bin/sh
ovs-ofctl add-flow fleft ip,nw_dst=10.0.0.100,actions=output:enx00e04c360278
