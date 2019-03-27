#!/bin/bash
#
kubectl -n kube-system describe secret $(kubectl -n kube-system get secret | grep dashboardadmin | awk '{print $1}')







