#!/bin/bash

if [[ $(kubectl get deployment nginx-deploy -o=jsonpath='{.spec.replicas}') -eq 3 && \
$(kubectl get deployment nginx-deploy -o=jsonpath='{.spec.template.spec.containers[0].ports[0].containerPort}') -eq 80 && \
$(kubectl get deployment nginx-deploy -o=jsonpath='{.spec.template.metadata.labels}' | grep -o '"tier":"frontend"') == '"tier":"frontend"' && \
$(kubectl get netpol nginx-netpol -o jsonpath='{.spec.podSelector.matchLabels}' | grep -o '"tier":"frontend"') == '"tier":"frontend"' && \
$(kubectl get netpol nginx-netpol -o jsonpath='{.spec.ingress[0].from[*].podSelector.matchLabels}' | grep -o '"role":"frontend"') == '"role":"frontend"' ]]

then
  exit 0
else
  exit 1
fi