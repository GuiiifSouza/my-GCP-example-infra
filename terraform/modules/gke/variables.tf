variable "region" {
  description = "Region to deploy the GKE cluster"
  type        = string
}

variable "k8s_cluster_name" {
  description = "Name of the GKE cluster"
  type        = string
}

variable "instance_type" {
  description = "Type of instance"
  type        = string
}

variable "node_count" {
  description = "Number of nodes"
  type        = number
}

variable "vpc_network" {
  description = "ID to the VPC network"
  type        = string
}

variable "public_subnet_id" {
  description = "ID to the public subnet"
  type        = string
}

variable "availability_zones" {
  description = "Zone to deploy the GKE cluster"
  type        = list(string)
}

variable "node_ssd_size_gb" {
  description = "Size of the SSD disk. In GB"
  type        = number
  default     = 100
}
