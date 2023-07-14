#!/bin/bash

if [[ $(kubectl get deployment nginx-deploy -o=jsonpath='{.spec.replicas}') -eq 3 && \
$(kubectl get deployment nginx-deploy -o=jsonpath='{.spec.template.spec.containers[0].ports[0].containerPort}') -eq 80 ]]

 ]]
then
  exit 0
else
  exit 1
fi