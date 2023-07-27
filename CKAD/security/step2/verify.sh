#!/bin/bash

if [[ $(kubectl exec -it clarusweb-pod -- printenv COLOR) = 'blue' ]]
then
  exit 0
else
  exit 1
fi