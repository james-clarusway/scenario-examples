#!/bin/bash

if [[ $(kubectl get deploy -n webserver -o yaml | grep 'mydeploy' | head -1 | awk '{print $2}') = 'mydeploy' \
&& $(kubectl get deploy mydeploy -n webserver -o yaml | grep 'httpd:alpine' | head -1 | awk '{print $3}') = 'httpd:alpine' \
&& $(kubectl get deploy mydeploy -n webserver -o yaml | grep 'web: apache' | head -1 | awk '{print $1,$2}') ]]
then
  exit 0
else
  exit 1
fi