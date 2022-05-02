output "vault_dynamodb_arn" {
  description = "dynamodb arn"
  value       = aws_dynamodb_table.vault_dynamodb.arn
}

//dyanmodb table name for vault stanza
output "dynamodb_table" {
  value       = "${var.resource_name_prefix}-vault-dynamodb"
}
