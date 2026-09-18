variable "vpc_id" {
  type = string
}

variable "public_subnet_ids" {
  type = list(string)
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

variable "alb_name" {
  type = string
}

variable "alb_security_group_name" {
  type = string
}

variable "ec2_security_group_name" {
  type = string
}

variable "target_group_name" {
  type = string
}

variable "launch_template_name" {
  type = string
}

variable "autoscaling_group_name" {
  type = string
}

variable "ec2_name" {
  type = string
}

variable "iam_role_name" {
  type = string
}

variable "instance_profile_name" {
  type = string
}

variable "unhealthy_targets_alarm_name" {
  type = string
}

variable "high_cpu_alarm_name" {
  type = string
}

variable "common_tags" {
  type = map(string)
}

variable "user_data" {
  type = string
}