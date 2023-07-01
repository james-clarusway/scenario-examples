#!/bin/bash

number=$(kubectl get deploy nginx-deploy | tail -n 1 | awk '{print $4}')

$(kubectl get po -o yaml | grep '\- image:' | awk '{print $3}')==nginx

if [[ $(kubectl get po -o yaml | grep '\- image:' | awk '{print $3}')==nginx:latest ]]
then
  exit 0
else
  exit 1
fi