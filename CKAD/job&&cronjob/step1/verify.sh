#!/bin/bash

if [[ $( kubectl get job pi -o jsonpath='{.spec.template.spec.containers[0].command}') = '["perl","-Mbignum=bpi","-wle","print bpi(2000)"]' \
&& $(kubectl get job pi -o jsonpath='{.spec.template.spec.containers[0].image}') = 'perl:5.34' ]]
then
  exit 0
else
  exit 1
fi