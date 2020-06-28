#!/bin/bash

IPADDRESS="`ip -4 addr show eth0 | grep -oP '(?<=inet\s)\d+(\.\d+){3}'`"
HOSTNAME="`hostname -f`"
ONLYHOST=`hostname -f | cut -d . -f 1`

LOCALHOST="127.0.0.1   localhost localhost.localdomain localhost4 localhost4.localdomain4"

echo  "$LOCALHOST"
echo "$IPADDRESS $HOSTNAME $ONLYHOST"
