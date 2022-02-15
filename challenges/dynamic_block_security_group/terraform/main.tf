resource "aws_vpc" "main" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  
}



resource "aws_security_group" "main" {
   name   = var.security_group_name
   vpc_id = aws_vpc.main.id

   dynamic "ingress" {
      for_each = var.ingress_rules

      content {
         description = ingress.value.description
         from_port   = ingress.value.port
         to_port     = ingress.value.port
         protocol    = ingress.value.protocol
         cidr_blocks = ingress.value.cidr_blocks
      }
   }

   tags = {
      Name = "AWS security group dynamic block"
   }
}