#!/bin/bash
# 되는거
kubectl -n kube-system describe secret $(kubectl -n kube-system get secret | grep dashboardadmin | awk '{print $1}')









#되야할거
kubectl -n kube-system get secret      $(kubectl -n kube-system get secrets | grep dashboardadmin | cut -f1 -d ' ') -o jsonpath='{$.data.token}' | base64 --decode




