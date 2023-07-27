#!/bin/bash

if [[ $(kubectl -n prod get deployment web -o jsonpath='{.spec.template.spec.serviceAccount}') = 'limited' ]]
then
  exit 0
else
  exit 1
fi