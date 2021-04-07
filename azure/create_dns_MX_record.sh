#!/bin/bash

IFS=$'\n'

RESOURCEGROUP="zimbra-training-2021"

for DOMINIOS in `cat dominios.txt`
do
  DOMINIO=`echo "$DOMINIOS" | cut -d "," -f 10`
  IP=`echo "$DOMINIOS" | cut -d "," -f 8`

          echo "az network dns record-set mx add-record --resource-group $RESOURCEGROUP --zone-name $DOMINIO --record-set-name \"@\" --exchange mail.$DOMINIO --preference 0"

done
