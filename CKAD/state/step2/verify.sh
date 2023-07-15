#!/bin/bash

if [[ $(kubectl get pvc mypv-claim | awk '{print $3}' | tail -1) = 'mypv' ]]
then
  exit 0
else
  exit 1
fi