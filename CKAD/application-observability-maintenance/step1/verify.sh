#!/bin/bash

if [[ $(kubectl get po liveness-pod -o jsonpath='{.spec.containers[0].image}') = 'nginx' \
&& $(kubectl get po liveness-pod -o jsonpath='{.spec.containers[0].livenessProbe.exec.command}') = '["ls"]' \
&& $(kubectl get po liveness-pod -o jsonpath='{.spec.containers[0].livenessProbe.initialDelaySeconds}') -eq 5 \
&& $(kubectl get po liveness-pod -o jsonpath='{.spec.containers[0].livenessProbe.periodSeconds}') -eq 5 ]]
then
  exit 0
else
  exit 1
fi