#!/bin/zsh

export PROFILE_NAME=logger-k8
SEPARATOR="========================================================================================================================"
BASEDIR=$(dirname "$0")

# create, delete, apply,  replace

# kubectl delete --force --grace-period=0 -v=3 -f $BASEDIR/../k8s/ingress.yaml
# kubectl delete --force --grace-period=0 -v=3 -f $BASEDIR/../k8s/services.yaml
# kubectl delete --force --grace-period=0 -v=3 -f $BASEDIR/../k8s/deployments.yaml

kubectl apply -v=3 -f $BASEDIR/../k8s

EXPOSE_ES="curl https://$(minikube ip -p $PROFILE_NAME)/es --insecure"
EXPOSE_KIBANA="curl https://$(minikube ip -p $PROFILE_NAME)/kibana --insecure"

echo 
echo
echo "GO 2 ES:     https://$(minikube ip -p $PROFILE_NAME)/es"
echo "GO 2 KIBANA: https://$(minikube ip -p $PROFILE_NAME)/kibana"
echo "$SEPARATOR"
echo $EXPOSE_ES
echo $EXPOSE_KIBANA
echo "$SEPARATOR"
echo "ES      ===>"
eval $EXPOSE_ES
echo "KIBANA ====>"
eval $EXPOSE_KIBANA
echo
echo
