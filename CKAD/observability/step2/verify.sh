#!/bin/bash

if [[ $(kubectl get po readiness-pod -o jsonpath='{.spec.containers[0].image}') = 'nginx' \
&& $(kubectl get po readiness-pod -o jsonpath='{.spec.containers[0].readinessProbe.httpGet.path}') = '/' \
&& $(kubectl get po readiness-pod -o jsonpath='{.spec.containers[0].readinessProbe.httpGet.port}') -eq 80 \
&& $(kubectl get po readiness-pod -o jsonpath='{.spec.containers[0].readinessProbe.initialDelaySeconds}') -eq 5 \
&& $(kubectl get po readiness-pod -o jsonpath='{.spec.containers[0].readinessProbe.periodSeconds}') -eq 5 ]]
then
  exit 0
else
  exit 1
fi