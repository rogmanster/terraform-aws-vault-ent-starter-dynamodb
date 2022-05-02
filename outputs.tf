output "vault_lb_dns_name" {
  description = "DNS name of Vault load balancer"
  value       = module.loadbalancer.vault_lb_dns_name
}

output "vault_lb_zone_id" {
  description = "Zone ID of Vault load balancer"
  value       = module.loadbalancer.vault_lb_zone_id
}

output "vault_lb_arn" {
  description = "ARN of Vault load balancer"
  value       = module.loadbalancer.vault_lb_arn
}

output "vault_target_group_arn" {
  description = "Target group ARN to register Vault nodes with"
  value       = module.loadbalancer.vault_target_group_arn
}

//Added - IAM instance profile for bastion hosts to access ASM for tls certs
output "aws_iam_instance_profile" {
  value       = module.iam.aws_iam_instance_profile
}

//Added - Security Group for bastion hosts to access LB
output "vault_lb_sg_id" {
  description = "Security Group IS for bastion hosts to access LB"
  value       = module.loadbalancer.vault_lb_sg_id
}
