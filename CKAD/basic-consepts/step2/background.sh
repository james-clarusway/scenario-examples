#!/bin/bash

echo starting... # to test stdout output in /var/log/killercoda

kubectl create deploy nginx-deploy  --image=nginx

touch /tmp/finished
