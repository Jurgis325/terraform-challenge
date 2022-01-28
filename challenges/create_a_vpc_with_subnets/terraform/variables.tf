# This file is where you will define your variables
variable "company_name" {
  type = string
}

variable "cidr_block" {
  type = string
}

variable "subnet_blocks" {
  type = list(string)
}

variable "tags" {
  type = map(string)
}
