variable "aws_region" {
  type = string
}

variable "project_name" {
  type = string
}

variable "page_title" {
  type = string
}

variable "environment" {
  type = string
}

variable "owner" {
  type = string
}

variable "vpc_cidr" {
  type = string
}

variable "public_subnet_cidrs" {
  type = list(string)

  validation {
    condition     = length(var.public_subnet_cidrs) == 2
    error_message = "Exactly two public subnet CIDR blocks are required."
  }
}

variable "instance_type" {
  type = string
}

variable "root_volume_size" {
  type = number
}

variable "minimum_capacity" {
  type = number
}

variable "desired_capacity" {
  type = number
}

variable "maximum_capacity" {
  type = number
}

variable "names" {
  type = object({
    vpc                     = string
    subnet_1                = string
    subnet_2                = string
    internet_gateway        = string
    route_table             = string
    alb                     = string
    alb_security_group      = string
    ec2_security_group      = string
    target_group            = string
    launch_template         = string
    autoscaling_group       = string
    ec2                     = string
    iam_role                = string
    instance_profile        = string
    unhealthy_targets_alarm = string
    high_cpu_alarm          = string
  })

  validation {
    condition     = length(var.names.alb) <= 32 && length(var.names.target_group) <= 32
    error_message = "The load balancer and target group names must not exceed 32 characters."
  }
}