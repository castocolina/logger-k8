#!/bin/bash

export PROFILE_NAME=logger-k8
SEPARATOR="========================================================================================================================"

minikube stop --alsologtostderr -p $PROFILE_NAME

# --gpu --vm-driver=kvm2 --vm-driver=hyperkit
# --memory 4096 --cpus 4
minikube start --alsologtostderr --v=3  -p $PROFILE_NAME --memory 4096 --cpus 3

minikube addons enable ingress -p $PROFILE_NAME
minikube addons enable dashboard -p $PROFILE_NAME

printf "\n\n $SEPARATOR\n"
echo "PATH: https://$(minikube ip $PROFILE_NAME)"
printf "\n $SEPARATOR\n\n"

set x && printf "\n\n $SEPARATOR\n To get URL of dashboard USE: \n\t minikube dashboard --v=3 --url -p $PROFILE_NAME \n $SEPARATOR\n\n"

printf ":: $SEPARATOR\n kubectl: "
kubectl version
printf ":: $SEPARATOR\n minikube:"
minikube version
printf ":: $SEPARATOR\n "