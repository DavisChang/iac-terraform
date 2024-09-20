# These variables are used in Terraform configurations to dynamically set values
# when creating AWS resources, making your configurations more flexible and easier 
# to manage.

variable "instance_name" {
  description = "Value of the Name tag for the EC2 instance"
  type        = string
  default     = "MyNewInstance"
}

variable "ec2_instance_type" {
  description = "AWS EC2 instance type."
  type        = string
  default     = "t2.micro"
}
