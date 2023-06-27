#!/bin/bash

number=$(kubectl get deploy nginx-deploy | tail -n 1 | awk '{print $4}')

if [[ $number -eq 3 ]]
then
  exit 0
else
  exit 1
fi