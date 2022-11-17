import os

print("DHCP Down")
os.system("./manager_down.sh")
# os.system("./manager_down.sh")

print("Pre Start OVS")
os.system("./pre_start_ovs.sh")
# os.system("./pre_start_ovs.sh")

print("Reset OVS")
os.system("./reset_ovs.sh")
# os.system("./reset_ovs.sh")

print("Start OVS")
os.system("./start_ovs.sh")
# os.system("./start_ovs.sh")

print("initialize OVS")
os.system("./init_ovs.sh false")

print("add static arp table")
os.system("./add_arp.sh")

print("add Controller")
os.system("./init_cont.sh")
