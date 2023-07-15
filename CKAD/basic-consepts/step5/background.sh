#!/bin/bash

echo starting... # to test stdout output in /var/log/killercoda

kubectl create deploy clarusweb  --image=clarusway/clarusweb:1.0

touch /tmp/finished
