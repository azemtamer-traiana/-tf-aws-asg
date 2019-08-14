data "aws_launch_template" "nagios-template-1" {
  name = "nagios-template-1"
}

data "aws_security_group" "default" {
  name = "default"
}

data "aws_subnet" "default" {
  id = "subnet-0035751cb9dfbc34e"
}

variable "availability-zone" {
  default = "us-west-2a"
}

variable "health-check-type" {
  default = "EC2"
}

variable "asg-name" {
  default = "nagios-ASG"
}