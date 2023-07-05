#!/bin/bash

if [[ $(kubectl get svc mynginx | grep 'mynginx' | awk '{print $1}') = 'mynginx' \
&& $(kubectl get ep mynginx | grep 'mynginx' | awk -F: '{print $2}' | awk '{print $1}') = '80'
then
  exit 0
else
  exit 1
fi