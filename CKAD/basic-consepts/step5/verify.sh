#!/bin/bash

if [[ $(kubectl get deploy clarusweb -o yaml | grep 'image: clarusway/clarusweb:2.0' | awk '{print $3}') = 'clarusway/clarusweb:2.0' ]]
then
  exit 0
else
  exit 1
fi