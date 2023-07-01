#!/bin/bash

if [[ $(kubectl get po -o yaml | grep '\- image:' | awk '{print $3}') = 'nginx:latest' \
&& $(k get po mypod -o yaml | grep "tier" | awk '{print $1,$2}') = 'tier: frontend' \
&& $(k get po mypod -o yaml | grep "mypod" | head -1 | awk '{print $2}') = 'mypod' ]]
then
  exit 0
else
  exit 1
fi