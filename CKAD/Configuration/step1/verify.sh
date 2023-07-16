#!/bin/bash

if [[ $(kubectl get cm myconfig -o jsonpath='{.data.mycolor}') = 'blue' ]]
then
  exit 0
else
  exit 1
fi