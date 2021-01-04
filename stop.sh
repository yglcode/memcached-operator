#!/usr/bin/env bash

source ./devenv.sh

set -x

kubectl delete memcached/memcached-sample -n $WATCH_NAMESPACE

kubectl delete namespace $WATCH_NAMESPACE

kubectl config set-context kind-kind --namespace=default

kubectl delete crd/memcacheds.cache.devops.io

