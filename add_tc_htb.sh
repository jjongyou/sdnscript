#!/bin/sh
tc qdisc add dev enx00e04c360278 root handle 1: htb default 11
# tc qdisc add dev enx00e04c360278 root handle 1: htb default 13
tc class add dev enx00e04c360278 parent 1: classid 1:1 htb rate 100mbit 
tc class add dev enx00e04c360278 parent 1:1 classid 1:10 htb rate 1mbit 
tc class add dev enx00e04c360278 parent 1:1 classid 1:11 htb rate 50mbit
tc class add dev enx00e04c360278 parent 1:1 classid 1:12 htb rate 70mbit
tc class add dev enx00e04c360278 parent 1:2 classid 1:13 htb rate 99mbit
tc -s qdisc ls dev enx00e04c360278

# tc qdisc add dev enx00e04c360278 root handle 1: htb default 11
# tc class add dev enx00e04c360278 parent 1: classid 1:1 htb rate 100mbit ceil 100mbit
# tc class add dev enx00e04c360278 parent 1:1 classid 1:10 htb rate 2mbit ceil 20mbit
# tc class add dev enx00e04c360278 parent 1:1 classid 1:11 htb rate 3mbit ceil 30mbit
# tc class add dev enx00e04c360278 parent 1:1 classid 1:12 htb rate 4mbit ceil 40mbit
# tc class add dev enx00e04c360278 parent 1:1 classid 1:13 htb rate 5mbit ceil 50mbit
# tc class add dev enx00e04c360278 parent 1:1 classid 1:14 htb rate 6mbit ceil 60mbit
# tc class add dev enx00e04c360278 parent 1:1 classid 1:15 htb rate 7mbit ceil 70mbit
# tc class add dev enx00e04c360278 parent 1:1 classid 1:16 htb rate 8mbit ceil 80mbit
# tc class add dev enx00e04c360278 parent 1:1 classid 1:16 htb rate 9mbit ceil 90mbit
# tc -s qdisc ls dev enx00e04c360278
