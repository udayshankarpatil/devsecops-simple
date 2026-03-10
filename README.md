![Build Status](https://github.com/udayshankarpatil/devsecops-simple/actions/workflows/pipeline.yml/badge.badge.svg)

# DevSecOps Simple
A DevSecOps "Hello World!" project


## Setup for WSL Ubuntu
**On Windows**
Install [Docker Desktop](https://docs.docker.com/desktop/setup/install/windows-install/) and
- Go to Settings > General and ensure "Use the WSL 2 based engine" is checked.
- Go to Settings > Resources > WSL Integration and toggle the switch for your Ubuntu distro.

**In WSL Ubuntu**
```shell
# Check Ubuntu Version
hostnamectl

# Install Ansible
pip install ansible

# Install Containerization Tools using Ansible
ansible-playbook -K setup/sys_wsl.yml

# Bootstrap the cluster
ansible-playbook bootstrap.yml
```

For ansible dry-runs, use one of the following
```shell
# Add one of the following options to your ansible-playbook command
--check | --diff | --list-hosts | --list-tasks | --syntax-check
# Or
ansible-lint <playbook>.yml
```

**Terraform Utils**
```
cd terraform
terraform providers
terraform show
```

**kubectl**
```shell
# Infrastructure
kubectl get nodes
kubectl get svc
kubectl get all -n argocd

# Application
kubectl get pods -n default
kubectl describe pod dummy-app

# ArgoCD
kubectl get svc -n argocd
kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d; echo
```
[Application](http://localhost:30080/)   [ArgoCD](https://localhost:30443)