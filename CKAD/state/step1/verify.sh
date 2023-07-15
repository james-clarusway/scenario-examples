#!/bin/bash

if [[ $(kubectl get pv mypv -o jsonpath='{.spec.accessModes[0]}') = 'ReadWriteOnce' \
&& $(kubectl get pv mypv -o jsonpath='{.spec.capacity.storage}') = '5Gi' \
&& $(kubectl get pv mypv -o jsonpath='{.spec.storageClassName}') = 'manual' \
&& $(kubectl get pv mypv -o jsonpath='{.spec.hostPath.path}') = '/mnt/data' ]]
then
  exit 0
else
  exit 1
fi