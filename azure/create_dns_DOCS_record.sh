#!/bin/bash

IFS=$'\n'

RESOURCEGROUP="zimbra-training-2021"
HOST="docs"

for DOMINIOS in `cat dominios.txt`
do
  DOMINIO=`echo "$DOMINIOS" | cut -d "," -f 2`
  IP=`echo "$DOMINIOS" | cut -d "," -f 1`

          echo "az network dns record-set a add-record --resource-group $RESOURCEGROUP --zone-name $DOMINIO --record-set-name $HOST --ipv4-address $IP"

done
