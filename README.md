# logger-k8

     bash scripts/minikube-start.sh
     bash scripts/install_crd.sh
     zsh scripts/deploy_manifest.zsh


After last script click on *GO 2 KIBANA:* url to open wizard.
After launch kibana url the wizard show options to load sample data. Click Yes.

Use postman collection to test SQL query to ES:  https://www.getpostman.com/collections/3718a0f79838fa052176


### TOOLS:

- kubectx - https://github.com/ahmetb/kubectx
  ```brew install kubectx```

- kube-prompt
- kube-ps1 - brew install kube-ps1 https://github.com/jonmosco/kube-ps1
- skaffold - https://github.com/GoogleContainerTools/skaffold

### Ref

- https://kubernetes.io/docs/concepts/cluster-administration/logging/#using-a-node-logging-agent
- https://chekkan.com/setting-up-elasticsearch-cluster-on-kubernetes-part-3-config-file/
- https://www.digitalocean.com/community/tutorials/how-to-set-up-an-elasticsearch-fluentd-and-kibana-efk-logging-stack-on-kubernetes
