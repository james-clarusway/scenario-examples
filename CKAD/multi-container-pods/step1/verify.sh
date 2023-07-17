#!/bin/bash

if [[ $(kubectl get po multi-pod -o jsonpath='{.spec.containers[0].volumeMounts[0]}') = '{"mountPath":"/usr/local/apache2/htdocs","name":"shared-data"}' \
&& $(kubectl get po multi-pod -o jsonpath='{.spec.containers[0].image}') = 'httpd:alpine' \
&& $(kubectl get po multi-pod -o jsonpath='{.spec.containers[1].image}') = 'alpine:latest' \
&& $(kubectl get po multi-pod -o jsonpath='{.spec.containers[1].volumeMounts[0]}') = '{"mountPath":"/pod-data","name":"shared-data"}' ]]
then
  exit 0
else
  exit 1
fi