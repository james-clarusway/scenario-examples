#!/bin/bash

k get deploy -o yaml | grep 'image: clarusway/clarusweb:2.0'

if [[ $? -eq 0 ]]
then
  exit 0
else
  exit 1
fi