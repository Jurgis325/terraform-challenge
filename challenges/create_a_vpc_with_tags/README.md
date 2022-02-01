## Challenge Create A VPC With Tags

### Scenario

Customer has asked you to create a new VPC with a particular CIDR range and with specific tags.  The 
challenge.tfvars has the detailed values.

### End Goal

- One appropriately named VPC
- VPC has the appropriate CIDR
- VPC has the appropriate tags

### Estimated Difficulty

Difficulty: Easy

### Estimated Costs

Cost: Free

### Destroy

Do not forget to destroy your resources when the challenge is completed.

### Solution

I wasn't sure how much of the challenge I was allowed to edit but the CIDR of 10.22.0.0/8 had to be edited to 10.22.0.0/16 because of size restrictions AWS places.  Additionally, the variables had to be edited to be without quotations since they were being deprecated.

I did the harder version of this so this one was relatively simple.