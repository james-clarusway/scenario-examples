#!/bin/bash

if [[ $(kubectl exec hello-pod -- cat /usr/share/nginx/html/index.html) == 'hello' ]]
then
  exit 0
else
  exit 1
fi