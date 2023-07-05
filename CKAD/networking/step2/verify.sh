#!/bin/bash

if [[ $(kubectl get svc mynginx | grep 'mynginx' | awk -F: '{print $2}' | awk -F/ '{print $1}') = '30001' ]]
then
  exit 0
else
  exit 1
fi