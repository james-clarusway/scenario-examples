#!/bin/bash

number=$(kubectl get deploy nginx-deploy | tail -n 1 | awk '{print $4}')

if [[ $(k get deployment nginx-deploy -o yaml | grep "replicas: 3" | head -1) -eq 3 ]]
then
  exit 0
else
  exit 1
fi