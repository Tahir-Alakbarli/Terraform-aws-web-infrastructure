output "website_url" {
  value = "http://${module.web.alb_dns_name}"
}

output "alb_dns_name" {
  value = module.web.alb_dns_name
}

output "vpc_id" {
  value = module.network.vpc_id
}

output "public_subnet_ids" {
  value = module.network.public_subnet_ids
}

output "availability_zones" {
  value = module.network.availability_zones
}

output "autoscaling_group_name" {
  value = module.web.autoscaling_group_name
}

output "launch_template_id" {
  value = module.web.launch_template_id
}