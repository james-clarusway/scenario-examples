#!/bin/bash

if [[ $(kubectl get cj hello-cronjob -o jsonpath='{.spec.schedule}') == '* * * * *' \
&& $(kubectl get cj hello-cronjob -o jsonpath='{.spec.jobTemplate.spec.template.spec.containers[0].image}') == 'busybox' ]]
then
  exit 0
else
  exit 1
fi