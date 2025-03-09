variable "vpc_name" {
  description = "Name of the VPC"
  type        = string
}

variable "region" {
  description = "Region for the VPC"
  type        = string
}

variable "public_subnet_cidr_block" {
  description = "Block CIDR for the public subnet"
  type        = string
}

variable "private_subnet_cidr_block" {
  description = "Block CIDR for the private subnet"
  type        = string
}

variable "availability_zones" {
  description = "List of availability zones"
  type        = list(string)
}
