## Challenge Create A VPC With Subnets

### Scenario

Customer has asked you to create a new VPC with a particular CIDR range and with specific tags.  They would like the creation of four subnets.  Two public and two private with the associated route tables.

### End Goal

- One appropriately named VPC
- VPC has the appropriate CIDR
- VPC has the appropriate tags
- One Internet Gateway
- One NAT Gateway
- Two public subnets routing through the IG
- Two private subnets routing through the NAT Gateway

### Estimated Difficulty

Difficulty: Medium

### Estimated Costs

Estimated Costs: $ (less than $1)

### Destroy

Do not forget to destroy your resources when the challenge is completed.

### My Solution

I wasn't sure how much of the challenge I was allowed to edit but the CIDR of 10.22.0.0/8 had to be edited to 10.22.0.0/16 because of size restrictions AWS places.

I liked this challenge but had done something similiar before where I had created each individual piece and put them together.  For this one I wanted to try and utilize the VPC module that AWS provides.