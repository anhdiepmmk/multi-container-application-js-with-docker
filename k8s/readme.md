## Useful internet docs
https://kubernetes.io/vi/docs/reference/kubectl/cheatsheet/
https://kubernetes.io/docs/tasks/debug-application-cluster/debug-application-introspection/

# Get all running pods
kubectl get pods
kubectl get pods --watch
kubectl get pods --namespace development
kubectl get pods --show-labels
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
kubectl get services --namespace development
# Get deployment runtime configuration yaml
kubectl get deployment nginx-deployment -o yaml

# Get pod runtime configuration yaml
kubectl get pod nginx-deployment-66b6c48dd5-5l78d -o yaml
kubectl get pod/reactjs-deployment-76cb6dd6d7-hlzp5 -o yaml

# Describe pods by name
kubectl describe pods nginx-deployment-66b6c48dd5-5l78d
kubectl describe pod nginx-deployment-66b6c48dd5-5l78d

# Describe deployment by name
kubectl describe deployment nginx-deployment

# Exec to pod by name
kubectl exec --stdin --tty nginx-deployment-66b6c48dd5-5l78d -- /bin/bash
kubectl exec -it httpd-1 -- bash
# Exec to pod by name in case we have many containers
kubectl exec -it two-containers -c <container name> -- /bin/bash

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

# Namespace
kubectl get ns
kubectl get namespace
kubectl get namespaces

# Get context
kubectl config get-contexts
kubectl config set-context --current --namespace=development

# Scale - HPA (HorizontalPodAutoscaler)
# https://kubernetes.io/docs/tasks/run-application/horizontal-pod-autoscale-walkthrough/
kubectl get hpa
kubectl get hpa/php-apache -o yaml
kubectl autoscale rs foo --min=2 --max=5 --cpu-percent=80
kubectl autoscale deployment foo --min=2 --max=10
kubectl scale --replicas=4 deployment/reactjs-deployment
kubectl scale --replicas=4 rs/reactjs-deployment
kubectl autoscale deployment php-apache --cpu-percent=50 --min=1 --max=10
kubectl run -i --tty load-generator --rm --image=busybox --restart=Never -- /bin/sh -c "while sleep 0.01; do wget -q -O- http://php-apache; done"