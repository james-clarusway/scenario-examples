#!/bin/bash

if [[ $(kubectl get secret mysecret -o jsonpath='{.data.password}') == 'c2VjcmV0MTIz' \
&& $(kubectl exec -it mysql-pod -- printenv MYSQL_ROOT_PASSWORD) == 'secret123' ]]
then
  exit 0
else
  exit 1
fi