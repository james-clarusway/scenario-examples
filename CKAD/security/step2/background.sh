#!/bin/bash

echo starting... # to test stdout output in /var/log/killercoda

kubectl create deploy web  --image=clarusway/clarusweb:1.0 -n prod
touch /tmp/finished
