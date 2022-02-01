# You can put all your resources into a single main.tf

#Create VPC
resource "aws_vpc" "main" {
  cidr_block       = var.cidr_block
  instance_tenancy = "default"

  tags = var.tags
}