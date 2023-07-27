#!/bin/bash

if [[ $(kubectl get deploy myapp -o jsonpath='{.spec.template.spec.containers[0].image}') = 'clarusway/clarusweb:1.0' ]]
then
  exit 0
else
  exit 1
fi