#!/bin/bash

echo starting... # to test stdout output in /var/log/killercoda

kubectl create ns prod 
kubectl create deploy web  --image=clarusway/clarusweb:1.0 -n prod
kubectl create sa limited
touch /tmp/finished
