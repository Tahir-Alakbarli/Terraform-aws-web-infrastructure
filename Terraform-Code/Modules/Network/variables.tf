variable "vpc_cidr" {
  type = string
}

variable "public_subnet_cidrs" {
  type = list(string)
}

variable "vpc_name" {
  type = string
}

variable "subnet_names" {
  type = list(string)
}

variable "internet_gateway_name" {
  type = string
}

variable "route_table_name" {
  type = string
}