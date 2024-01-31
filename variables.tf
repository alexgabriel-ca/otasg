# Terraform Variables

# Local Values
locals {
  vpc_name                 = "wk21-vnet"
  internet_gateway_name    = "wk21-internet-gateway"
  public_subnet_name       = "wk21-public-subnet"
  private_subnet_name      = "wk21-private-subnet"
  public_route_table_name  = "wk21-public-route-table"
  private_route_table_name = "wk21-private-route-table"
  elastic_ip_name          = "wk21-nat-elastic-ip"
  nat_gateway_name         = "wk21-nat-gateway"
  alb_security_group_name  = "wk21-alb-security-group"
  asg_security_group_name  = "wk21-asg-security-group"
  launch_template_name     = "wk21-launch-template"
  launch_template_ec2_name = "wk21-asg-ec2"
  alb_name                 = "wk21-external-alb"
  target_group_name        = "wk21-alb-target-group"
}

# VPC Variables

variable "vpc_cidr" {
  description = "VPC cidr block"
  type        = string
  default     = "172.16.0.0/16"
}

variable "az_names" {
  type    = list(string)
  default = ["us-east-1a", "us-east-1b"]
}

variable "public_subnet_cidr" {
  description = "Public Subnet cidr block"
  type        = list(string)
  default     = ["172.16.0.0/24", "172.16.1.0/24"]
}

variable "private_subnet_cidr" {
  description = "Private Subnet cidr block"
  type        = list(string)
  default     = ["172.16.10.0/24", "172.16.11.0/24"]
}

# Launch Template and ASG Variables

variable "ami" {
  description = "ami id"
  type        = string
  default     = "ami-006dcf34c09e50022"
}

variable "aws_region" {
  description = "AWS region name"
  type        = string
  default     = "us-east-1"
}

variable "server_port" {
  description = "The port the web server will be listening"
  type        = number
  default     = 8080
}

variable "elb_port" {
  description = "The port the elb will be listening"
  type        = number
  default     = 80
}

variable "instance_type" {
  description = "The type of EC2 Instances to run (e.g. t2.micro)"
  type        = string
  default     = "t2.micro"
}

variable "min_size" {
  description = "The minimum number of EC2 Instances in the ASG"
  type        = number
  default     = 2
}

variable "max_size" {
  description = "The maximum number of EC2 Instances in the ASG"
  type        = number
  default     = 5
}

variable "desired_capacity" {
  description = "The desired number of EC2 Instances in the ASG"
  type        = number
  default     = 3
}
