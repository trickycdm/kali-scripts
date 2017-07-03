#!/bin/bash
interface=$1;

ifconfig $interface down;
#The ifconfig tool will be replaced by iproute2. Use the following command to take down wlan1 with iproute2:
ip link set $interface down;
#change the mac to a random mac
macchanger -r $interface;

#bring it back up
ifconfig wlan1 up;
ip link set wlan1 up;
