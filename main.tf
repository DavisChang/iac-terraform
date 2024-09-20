# Provider Block
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# Resources Block
# "aws_instance - https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance
resource "aws_instance" "app_server" {
  ami           = "ami-008789001adc98s83"
  instance_type = "t2.micro"

  tags = {
    Name = "myTerraformInstance"
  }
}
