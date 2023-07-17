#!/bin/bash

kubectl exec init-pod -- cat /usr/share/nginx/html/index.html > /mnt/index.html

if cmp -s "/mnt/cern.html" "/mnt/index.html"
then
  exit 0
else
  exit 1
fi