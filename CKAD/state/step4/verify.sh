#!/bin/bash

if [[ $(kubectl get pv demo-pv -o jsonpath='{.spec.accessModes[0]}') = 'ReadWriteOnce' \
&& $(kubectl get pv demo-pv -o jsonpath='{.spec.capacity.storage}') = '1Gi' \
&& $(kubectl get pv demo-pv -o jsonpath='{.spec.storageClassName}') = 'manual' \
&& $(kubectl get pv demo-pv -o jsonpath='{.spec.hostPath.path}') = '/opt/data' \
&& $(kubectl get pvc demo-pv-claim | awk '{print $3}' | tail -1) = 'demo-pv' \
&& $(kubectl get pvc demo-pv-claim -o jsonpath='{.spec.resources.requests.storage}') = '500Mi' \
&& $(kubectl get pod apache-pod -o jsonpath='{.spec.containers[0].image}') = 'httpd:2' \
&& $(kubectl exec apache-pod -- cat /usr/local/apache2/htdocs/index.html) = 'hello world' ]]
then
  exit 0
else
  exit 1
fi