# logging-k8

     bash scripts/minikube-start.sh
     bash scripts/install_crd.sh
     kubectl apply -v=4 -f k8s && printf "\n\n====\n"; kubectl get pods -w

See https://chekkan.com/setting-up-elasticsearch-cluster-on-kubernetes-part-3-config-file/