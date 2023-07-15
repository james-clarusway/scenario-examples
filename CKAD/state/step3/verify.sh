#!/bin/bash

if [[ $(kubectl get po ng-pod -o yaml | grep 'claimName: mypv-claim' | awk '{print $2}') != 'mypv-claim' \
&& $(kubectl get po ng-pod -o jsonpath='{.spec.containers[0].volumeMounts[0].mountPath}') != '/mnt/myvol' ]]
then
  exit 0
else
  exit 1
fi