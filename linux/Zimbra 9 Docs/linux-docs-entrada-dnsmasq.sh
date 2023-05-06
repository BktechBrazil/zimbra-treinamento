#!/bin/bash

IPADDRESS="`ip -4 addr show eth0 | grep -oP '(?<=inet\s)\d+(\.\d+){3}'`"
HOSTNAME="`hostname -f`"
DOMAIN=`hostname -f | cut -d . -f 2,3,4,5`

echo "address=/$HOSTNAME/$IPADDRESS" >> /etc/dnsmasq.conf

systemctl restart dnsmasq
