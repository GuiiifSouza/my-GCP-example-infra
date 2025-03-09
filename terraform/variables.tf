variable "project_id" {
  description = "ID to project GCP"
  type        = string
}

variable "region" {
  description = "Region GCP"
  type        = string
}

variable "vpc_name" {
  description = "Name of the VPC"
  type        = string
}

variable "public_subnet_cidr_block" {
  description = "CIDR block for the public subnet"
  type        = string
}

variable "private_subnet_cidr_block" {
  description = "CIDR block for the private subnet"
  type        = string
}

variable "availability_zones" {
  description = "Zone of the cluster GKE"
  type        = list(string)
}

variable "instance_type" {
  description = "Type of instance"
  type        = string
}

variable "k8s_cluster_name" {
  description = "Name of the GKE cluster"
  type        = string
}

variable "node_count" {
  description = "Number of nodes in the GKE cluster"
  type        = number
  default     = 3
}

variable "node_ssd_size_gb" {
  description = "Size of the SSD in GB"
  type        = number
  default     = 100
}
