#!/bin/bash

PROFILE_NAME=demo-loggin
SEPARATOR="========================================================================================================================"

minikube stop --alsologtostderr -p $PROFILE_NAME

# --gpu --vm-driver=kvm2 --vm-driver=hyperkit
# --memory 4096 --cpus 4
minikube start --alsologtostderr --v=3  -p $PROFILE_NAME --memory 2048 --cpus 2

set x && printf "\n\n $SEPARATOR\n To get URL of dashboard USE: \n\t minikube dashboard --v=3 --url --alsologtostderr -p $PROFILE_NAME \n $SEPARATOR\n\n"

printf ":: $SEPARATOR\n kubectl: "
kubectl version
printf ":: $SEPARATOR\n minikube:"
minikube version
printf ":: $SEPARATOR\n "