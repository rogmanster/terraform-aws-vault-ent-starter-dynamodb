output "vault_sg_id" {
  description = "Security group ID of Vault cluster"
  value       = aws_security_group.vault.id
}

/*
output "bastion_sg_id" {
  description = "Security group ID of Vault cluster"
  value       = aws_security_group.bastion.id
}*/
