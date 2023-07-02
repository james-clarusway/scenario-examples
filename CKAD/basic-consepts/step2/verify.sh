#!/bin/bash

if [[ $(kubectl get ns | grep 'webserver' | awk '{print $1}') = 'webserver' ]]
then
  exit 0
else
  exit 1
fi