module "network" {
  source = "./Modules/Network"

  vpc_cidr              = var.vpc_cidr
  public_subnet_cidrs   = var.public_subnet_cidrs
  vpc_name              = var.names.vpc
  subnet_names          = [var.names.subnet_1, var.names.subnet_2]
  internet_gateway_name = var.names.internet_gateway
  route_table_name      = var.names.route_table
}

module "web" {
  source = "./Modules/Web"

  vpc_id                       = module.network.vpc_id
  public_subnet_ids            = module.network.public_subnet_ids
  instance_type                = var.instance_type
  root_volume_size             = var.root_volume_size
  minimum_capacity             = var.minimum_capacity
  desired_capacity             = var.desired_capacity
  maximum_capacity             = var.maximum_capacity
  alb_name                     = var.names.alb
  alb_security_group_name      = var.names.alb_security_group
  ec2_security_group_name      = var.names.ec2_security_group
  target_group_name            = var.names.target_group
  launch_template_name         = var.names.launch_template
  autoscaling_group_name       = var.names.autoscaling_group
  ec2_name                     = var.names.ec2
  iam_role_name                = var.names.iam_role
  instance_profile_name        = var.names.instance_profile
  unhealthy_targets_alarm_name = var.names.unhealthy_targets_alarm
  high_cpu_alarm_name          = var.names.high_cpu_alarm
  common_tags                  = local.common_tags
  user_data                    = local.rendered_user_data
}
