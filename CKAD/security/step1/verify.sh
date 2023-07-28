#!/bin/bash

if [[ $(kubectl get sa app-sa -n prod | grep -i app-sa | awk '{printf $1}') = 'app-sa' \
&& $(kubectl get clusterrole app-clusterrole -o jsonpath='{.rules[0].apiGroups[0]}') = 'apps' \
&& $(kubectl get clusterrole app-clusterrole -o jsonpath='{.rules[0].resources[0]}') = 'deployments' \
&& $(kubectl get clusterrole app-clusterrole -o jsonpath='{.rules[0].verbs[0]}') = 'create' \
&& $(kubectl get clusterrolebindings.rbac.authorization.k8s.io app-clusterrolebinding  -o jsonpath={'.roleRef'.name}) = 'app-clusterrole' \
&& $(kubectl get clusterrolebindings.rbac.authorization.k8s.io app-clusterrolebinding  -o jsonpath={'.subjects[0].name'}) = 'app-sa' \
&& $(kubectl get clusterrolebindings.rbac.authorization.k8s.io app-clusterrolebinding  -o jsonpath={'.subjects[0].namespace'}) = 'prod' ]]
then
  exit 0
else
  exit 1
fi