#!/bin/bash

if [[ $(kubectl get deploy myapp -o jsonpath='{.spec.strategy.rollingUpdate.maxSurge}') = '10%' \
&& $(kubectl get deploy myapp -o jsonpath='{.spec.strategy.rollingUpdate.maxUnavailable}') = '5%' \
$$ $(kubectl get deploy myapp -o jsonpath='{.spec.template.spec.containers[0].image}') = 'clarusway/clarusweb:2.0'
]]
then
  exit 0
else
  exit 1
fi