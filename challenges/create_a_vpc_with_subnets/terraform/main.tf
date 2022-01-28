# You can put all your resources into a single main.tf

module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  cidr = var.cidr_block

  azs             = ["us-west-2a", "us-west-2b", "us-west-2c"]
  public_subnets  = [var.subnet_blocks[0], var.subnet_blocks[1]]
  private_subnets = [var.subnet_blocks[2], var.subnet_blocks[3]]

  enable_nat_gateway = true
  single_nat_gateway  = true


  tags = var.tags

  vpc_tags = {
  Name = var.company_name
  }
}

