# EKS Terraform and Kubernetes Deployment

This repository contains Terraform files for provisioning an Amazon Elastic Kubernetes Service (EKS) cluster and Kubernetes deployment files for deploying a React applications `weather_app`. The infrastructure is defined using Terraform, and the applications are deployed to the EKS cluster using Kubernetes manifests.

## Table of Contents

- [Prerequisites](#prerequisites)
- [Terraform Setup](#terraform-setup)
- [Kubernetes Deployment](#kubernetes-deployment)
- [Accessing Applications](#accessing-applications)
- [Contributing](#contributing)
- [License](#license)

## Prerequisites

Before you begin, ensure you have met the following requirements:

- AWS account.
- AWS IAM role with admin access.
- Terraform installed on your local machine.
- Docker installed on your local machine.
- kubectl (Kubernetes CLI) installed on your local machine.
- AWSCLI installed on your local machine.
- Docker images for the `weather_app` application pushed to a container registry.

## Terraform Setup

you can install the terraform from the following link
[Visit official site](https://github.com]https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli)

##Docker image
Image-name - `yaswanthb13/weather-app`
[Visit official site](https://hub.docker.com/r/yaswanthb13/weather-app)

## Kubectl configuratio

you can install kubectl from the official website link given below, based on your system configurations
[Visit official site](https://kubernetes.io/docs/tasks/tools/install-kubectl-linux/)

## AWSCLI

```bash
sudo apt update
```

```bash 
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
```
```bash
aws --version
```
```bash
aws configure
```

##EKS creation using terraform 
clone the github repo and run 
```bash
terraform init
```

```bash 
terraform plan -var-file="variables.tfvars"
``` 
followed by 
```bash 
terraform apply -var-file="variables.tfvars"
```
Now the cluster is created.

##Creating  Pods and Deployments
run 
```bash 
kubectl apply -f path_to_deployment_file
kubectl apply -f path_to_service_file
```
Check the pods,nodes and services created
```bash
kubectl get pods
kubectl get nodes
kubectl get svc
```
now the environment is set up and the applications will be live.
