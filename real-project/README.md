# Simplified AWS Architecture Outline
Define resources using Terraform for setting up a VPC, subnet, Internet Gateway, route table, security group, and an EC2 instance


## VPC (MyTestVPC):
CIDR: 10.0.0.0/16

## Public Subnet (MyTestSubnet):
CIDR: 10.0.1.0/24
Placed inside the VPC.

## Internet Gateway (MyTestIGW):
Attached to the VPC for internet access.

## Route Table (Public RT):
Associated with the public subnet.
Route to Internet Gateway for outbound traffic.

## Security Group (App SG):
Allows inbound HTTP traffic (port 80).

## EC2 Instance (MyTestEC2):
Deployed in the public subnet.
Associated with the security group allowing HTTP access.
Connected to the Internet Gateway for public access.