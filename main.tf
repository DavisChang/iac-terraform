# This main.tf file sets up a complete networking environment for
# hosting an EC2 instance accessible over HTTP.

# Provider Block
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# Resources Block
# "aws_instance - https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance
resource "aws_instance" "app_server" {
  ami           = "ami-008789001adc98s83"
  instance_type = var.ec2_instance_type

  tags = {
    Name = var.instance_name
  }
}
