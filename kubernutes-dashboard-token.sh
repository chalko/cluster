#!/usr/bin/env bash

kubectl -n kubernetes-dashboard describe secret $(
  kubectl -n kubernetes-dashboard get secret | \
  awk '/^kubernetes-dashboard-token-/{print $1}'
) | \
awk '$1=="token:"{print $2}'
