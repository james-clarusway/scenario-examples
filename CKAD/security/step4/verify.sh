#!/bin/bash

if [[ $(kubectl get po demo-context -o jsonpath='{.spec.containers[0].securityContext.capabilities.add}') == '["SYS_TIME"]' ]]
then
  exit 0
else
  exit 1
fi