variable "vpc-name" {
  type        = string
  description = "Name of the Virtual Private Cloud (VPC)"
}

variable "igw-name" {
  type        = string
  description = "Name of the Internet Gateway (IGW)"
}

variable "subnet-name" {
  type        = string
  description = "Name of the first subnet"
}

variable "subnet-name2" {
  type        = string
  description = "Name of the second subnet"
}

variable "security-group-name" {
  type        = string
  description = "Name of the security group"
}

variable "rt-name1" {
  type        = string
  description = "Name of the route table for the first subnet"
}

variable "rt-name2" {
  type        = string
  description = "Name of the route table for the second subnet"
}


variable "iam-role-eks" {
  type        = string
  description = "Name of the IAM role for Amazon EKS"
}

variable "iam-role-node" {
  type        = string
  description = "Name of the IAM role for worker nodes"
}

variable "iam-policy-eks" {
  type        = string
  description = "Name of the IAM policy for Amazon EKS"
}

variable "iam-policy-node" {
  type        = string
  description = "Name of the IAM policy for worker nodes"
}

variable "cluster-name" {
  type        = string
  description = "Name of the Amazon EKS cluster"
}

variable "eksnode-group-name" {
  type        = string
  description = "Name of the EKS node group"
}
