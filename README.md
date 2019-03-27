# Kubernetes Dashboard deploy using Nodeport

This example shows how to set up the dashboard using a custom NodePort In the kubernetes[k8s] environment. 
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


#### Request restful API & Response
```shell
curl -X POST http://localhost:8080/youtube-dl/rest \
  -d '{
	"url":"https://thisisdown.com/xxx",
	"resolution":"best", 
	"id":"iamgroot",
	"pw":"1234"
}'
```
```shell
{
    "success": true,
    "msg": "download has started",
    "Remaining downloading count": "7"
}
```

 If you want to get into docker container os, excute this command `[1]` :
```console
docker exec -i -t youtube-dl /bin/bash
```

##### Example, when using synology docker provisioning platform

- docker volume mount setting 

![screenshot1](https://github.com/hyeonsangjeon/youtube-dl-nas/blob/master/pic/volume_set_synology.png?raw=true)



- ID, Password setting to docker environment
![screenshot1](https://github.com/hyeonsangjeon/youtube-dl-nas/blob/master/pic/id_pw_set_synology.png?raw=true)

### Reference
[1]: https://github.com/hyeonsangjeon/youtube-dl-nas/blob/master/pic/youtube-dl-server-login.png
[2]: https://github.com/hyeonsangjeon/youtube-dl-nas/blob/master/pic/youtube-dl-server.png
[3]: https://github.com/hyeonsangjeon/youtube-dl-nas/blob/master/pic/volume_set_synology.png
[4]: https://github.com/hyeonsangjeon/youtube-dl-nas/blob/master/pic/id_pw_set_synology.png

`[1]`. https://docs.docker.com/engine/reference/commandline/cli/#environment-variables

