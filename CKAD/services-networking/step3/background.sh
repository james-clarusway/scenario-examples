#!/bin/bash

echo starting... # to test stdout output in /var/log/killercoda

kubectl create deploy clarus-deploy --image=clarusway/clarusweb --port=80 --replicas=3

kubectl create -f - <<EOF
apiVersion: v1
kind: Service
metadata:
  labels:
    app: clarus-svc
  name: clarus-svc
spec:
  ports:
  - port: 80
    protocol: TCP
    targetPort: 80
  selector:
    app: clarus-svc
  type: NodePort
EOF

touch /tmp/finished
