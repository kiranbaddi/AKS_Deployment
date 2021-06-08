variable "prefix" {
  description = "Prefix for the resources in this deployment"
}

variable "location" {
  description = "Location where the RG and cluster are created"
}

variable "workers" {
  description = "No. of Nodes/minions to be created for the eks cluster"
  default     = 2
}

variable "worker_size" {
  description = "VM Size of the Node ex; D2v1, Dv1 etc"
}

variable "dns_prefix" {
  description = "A prefix for the cluster dns"
  default     = "baks"
}

variable "CostCenter" {

}

variable "Environment" {

}