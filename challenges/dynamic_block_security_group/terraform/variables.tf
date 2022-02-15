# This file is where you will define your variables
# Networking
variable "security_group_name" {
  description = "The name of the security group"
  type        = string
}

variable "vpc_id" {
  description = "The id of the VPC"
  type        = string
}

variable "ingress_rules" {
  type = list( object({
    port = number
    description = string
    protocol = string
    cidr_blocks = list(string)
  }))
}