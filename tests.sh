#!/usr/bin/env bash

source ./devenv.sh

set -x

kubectl apply -f config/samples/cache_v1alpha1_memcached.yaml

kubectl get memcached

sleep 3

kubectl get memcached/memcached-sample -o yaml

sleep 5

kubectl patch memcached memcached-sample -p '{"spec":{"size": 5}}' --type=merge

kubectl get memcached
