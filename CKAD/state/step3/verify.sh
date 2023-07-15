#!/bin/bash

if [[ $(kubectl get ep clarus-svc  | grep clarus-svc | awk '{print $2}') != '<none>' ]]
then
  exit 0
else
  exit 1
fi