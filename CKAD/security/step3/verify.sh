#!/bin/bash

if [[ $(kubectl -n prod get deployment web -o jsonpath='{.spec.template.spec.securityContext.runAsUser}') -eq 1000 \
&& $(kubectl -n prod get deployment web -o jsonpath='{.spec.template.spec.securityContext.runAsGroup}') -eq 2000 ]]
then
  exit 0
else
  exit 1
fi