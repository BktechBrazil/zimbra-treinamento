#!/bin/bash

IPADDRESS="`ip -4 addr show eth0 | grep -oP '(?<=inet\s)\d+(\.\d+){3}'`"
HOSTNAME="`hostname -f`"
DOMAIN=`hostname -f | cut -d . -f 2,3,4,5`

aptitude install dnsmasq -y

echo "server=8.8.4.4" >> /etc/dnsmasq.conf
echo "server=8.8.8.8" >> /etc/dnsmasq.conf
echo "domain=$DOMAIN" >> /etc/dnsmasq.conf
echo "mx-host=$DOMAIN,$HOSTNAME,0" >> /etc/dnsmasq.conf
echo "address=/$HOSTNAME/$IPADDRESS" >> /etc/dnsmasq.conf
echo "search $DOMAIN" > /etc/resolv.conf
echo "nameserver 127.0.0.1" >> /etc/resolv.conf
chattr +i /etc/resolv.conf

systemctl enable dnsmasq
systemctl restart dnsmasq
