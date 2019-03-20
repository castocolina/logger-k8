
#!/bin/bash

PROFILE_NAME=demo-loggin
SEPARATOR="========================================================================================================================"

kubectl config use-context $PROFILE_NAME

echo
# Install Bitnami SealedSecret CRD (for k8s >= 1.7)
release=$(curl --silent "https://api.github.com/repos/bitnami-labs/sealed-secrets/releases/latest" \
    | sed -n 's/.*"tag_name": *"\([^"]*\)".*/\1/p')
URL=https://github.com/bitnami-labs/sealed-secrets/releases/download/$release/sealedsecret-crd.yaml
echo "$URL"
kubectl apply -f $URL

echo
# Install the CertManager resources
release=$(curl --silent "https://api.github.com/repos/jetstack/cert-manager/releases/latest" \
    | sed -n 's/.*"tag_name": *"\([^"]*\)".*/\1/p')
URL=https://raw.githubusercontent.com/jetstack/cert-manager/$release/deploy/manifests/00-crds.yaml
echo "$URL"
kubectl apply -f $URL

echo
# Install Kong CRD
URL=https://raw.githubusercontent.com/Kong/kubernetes-ingress-controller/master/deploy/single/all-in-one-postgres.yaml
echo "$URL"
kubectl apply -f $URL

