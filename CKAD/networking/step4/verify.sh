#!/bin/bash

if [[ $(kubectl -n blue get ingress test-ingress -o jsonpath='{.spec.rules[0].host}') == 'ckad.clarusway.us' && \
$(kubectl -n blue get ingress test-ingress -o jsonpath='{.spec.rules[0].http.paths[*].backend.service}') == '{"name":"nginx-svc","port":{"number":80}} {"name":"apache-svc","port":{"number":80}}' || '{"name":"apache-svc","port":{"number":80}} {"name":"nginx-svc","port":{"number":80}}'  ]]
$(kubectl -n blue get ingress test-ingress -o jsonpath='{.spec.rules[0].http.paths[*].path}') == '/nginx /apache' || 'apache /nginx' ]]
then
  exit 0
else
  exit 1
fi