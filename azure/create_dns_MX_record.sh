#!/bin/bash

IFS=$'\n'

RESOURCEGROUP="zimbra-training-2021"

for DOMINIOS in `cat dominios.txt`
do
  echo "az network dns record-set mx add-record --resource-group $RESOURCEGROUP --zone-name $DOMINIOS --record-set-name \"@\" --exchange mail.$DOMINIOS --preference 0"
done 
