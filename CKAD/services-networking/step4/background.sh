#!/bin/bash

echo starting... # to test stdout output in /var/log/killercoda
kubectl create ns blue
kubectl run nginx-pod --port=80 --image=nginx -n blue
kubectl run apache-pod --port=80 --image=httpd -n blue
kubectl -n blue expose pod nginx-pod  --port=80 --name nginx-svc
kubectl -n blue expose pod apache-pod  --port=80 --name apache-svc
touch /tmp/finished
