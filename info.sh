#!/bin/bash

list=$(find /sys/class/net -type l)
for nic in $list
do
    echo "*** [ NIC: $nic ] ***"
    cat "${nic}/uevent"
    echo ""
done

# Retrieve the IP address
ip_address=$(hostname -I | awk '{print $1}')

# Display the IP address
echo "IP Address: $ip_address"


ip_address=$(ifconfig | grep 'inet ' | awk '{print $2}')
echo $ip_address


interface="lo"  # Replace with your desired interface name
ip_addr=$(ip addr show "$interface" | awk '/inet / {print $2}')
echo "IP address of $interface: $ip_addr"

echo ""

ifconfig | grep -w inet |grep -v 127.0.0.1| awk '{print $2}' | cut -d ":" -f 2
