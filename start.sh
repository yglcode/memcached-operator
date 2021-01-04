#!/usr/bin/env bash

source ./devenv.sh

set -x

kubectl create namespace $WATCH_NAMESPACE

kubectl config set-context kind-kind --namespace=$WATCH_NAMESPACE

make install run


