## Useful internet docs
https://kubernetes.io/vi/docs/reference/kubectl/cheatsheet/
https://kubernetes.io/docs/tasks/debug-application-cluster/debug-application-introspection/

# Get all running pods
kubectl get pods

# View logs by pod name in mode following
kubectl logs httpd-1 -f

# Get all deployment
kubectl get deployment

# Tell k8s apply a configuration
kubectl apply -f deployment.yml
kubectl scale --replicas=3 -f deployment.yml
kubectl delete -f deployment.yml 


# Get all service
kubectl get services

# Get deployment runtime configuration yaml
kubectl get deployment nginx-deployment -o yaml

# Get pod runtime configuration yaml
kubectl get pod nginx-deployment-66b6c48dd5-5l78d -o yaml

# Describe pods by name
kubectl describe pods nginx-deployment-66b6c48dd5-5l78d
kubectl describe pod nginx-deployment-66b6c48dd5-5l78d

# Describe deployment by name
kubectl describe deployment nginx-deployment

# Exec to pod by name
kubectl exec --stdin --tty nginx-deployment-66b6c48dd5-5l78d -- /bin/bash
kubectl exec -it httpd-1 -- bash

# Get minikube ip
minikube ip

# Get service list
minikube service list
minikube service nginx-service
minikube service nginx-service --url
minikube addons list | grep ingress
minikube addons enable ingress

# Edit runtime configuration
kubectl edit service httpd-service