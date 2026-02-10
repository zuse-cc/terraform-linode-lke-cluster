variable "region" {
  description = "Linode region to create the bucket in"
  type        = string
}

variable "stage" {
  description = "Deployment stage"
  type        = string
}

variable "service" {
  description = "Service name"
  type        = string
}

variable "k8s_version" {
  description = "Kubernetes version for the cluster"
  type        = string
  default     = "1.34"
}

variable "worker_pool_type" {
  description = "Linode instance type for worker nodes"
  type        = string
  default     = "g6-standard-2"
}

variable "worker_pool_count" {
  description = "Number of worker nodes in the pool"
  type        = number
  default     = 3
}
