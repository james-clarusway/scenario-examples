#!/bin/bash

echo starting... # to test stdout output in /var/log/killercoda

kubectl run demo-context --image busybox:1.36 --command sleep 5h

touch /tmp/finished
