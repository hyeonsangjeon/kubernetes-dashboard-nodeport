# Kubernetes Dashboard deploy using Nodeport

This example shows how to set up the dashboard[1] using a custom NodePort In the kubernetes[k8s] environment. 
The k8s dashboard allows you to view and orchestrate container pool status information.


### How to use this kubernetes dashboard compose yaml

#### To run k8s dashboard, excute this command in a ternimal:
```shell
run-dashboard.sh
```




##### The account that uses the dashboard must have admin privileges on all clusters by default and use the cluster-admin role of the kubernetes role based access control (RBAC).
![screenshot1](https://github.com/hyeonsangjeon/minikube-dev-env/blob/master/pic/k8s_RBAC.png?raw=true)
#### Used variables are as follows,

|kind           |Variables      |
|---------------|---------------|
|ServiceAccount |dashboardadmin |  
|ClusterRole    |cluster-admin  | 
|ClusterRoleBinding |kubernetes-dashboard        |
|Namespace      |kube-system       |
|NodePort      |32154       |
|Dashboard URL information|https://domain::32154|

##### To check RBAC authorization, excute this command in a ternimal:
```shell
kubectl describe clusterrolebinding kubernetes-dashboard
```

##### To check access api to dashboardadmin, excute this command in a ternimal:
```shell
check-access-by-dashboardadmin.sh
```

##### Verify the tokens in the dashboardadmin account in the terminal to log in to the Dashboard:

```shell
get-dashboard-token.sh
```

### Reference
`[1]`. https://kubernetes.io/docs/tasks/access-application-cluster/web-ui-dashboard/

