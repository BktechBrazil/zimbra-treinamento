#!/bin/bash

IPADDRESS="`ip -4 addr show eth0 | grep -oP '(?<=inet\s)\d+(\.\d+){3}'`"
HOSTNAME="`hostname -f`"
DOMAIN=`hostname -f | cut -d . -f 2,3,4,5`


echo "server=8.8.4.4"
echo "server=8.8.8.8"
echo "domain=$DOMAIN"
echo "mx-host=$DOMAIN,$HOSTNAME,0"
echo "address=/$HOSTNAME/$IPADDRESS"
