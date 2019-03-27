#!/bin/bash
# For v1.8.x default policy, this 'curl' results in '403 Forbidden'
APISERVER=$(kubectl config view | grep server | cut -f 2- -d ":" | tr -d " ")
# Retrieve 'default' account's TOKEN in 'default' namespace
TOKEN="$(kubectl -n kube-system get secret      $(kubectl -n kube-system get secrets | grep dashboardadmin | cut -f1 -d ' ') -o jsonpath='{$.data.token}' | base64 --decode)"
curl -D - --insecure --header "Authorization: Bearer $TOKEN" $APISERVER/api/v1/namespaces/default/services