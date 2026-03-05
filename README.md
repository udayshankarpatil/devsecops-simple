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
ansible-playbook [-K] setup/sys_wsl.yml

# Ansible Dry Runs
ansible-playbook [-K] [--check | --diff | --list-hosts | --list-tasks | --syntax-check] setup/sys_wsl.yml
ansible-lint setup/sys_wsl.yml
```
