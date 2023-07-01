#!/bin/bash

if [[ $(kubectl get po -o yaml | grep '\- image:' | awk '{print $3}') = "nginx:latest" ]]
then
  exit 0
else
  exit 1
fi