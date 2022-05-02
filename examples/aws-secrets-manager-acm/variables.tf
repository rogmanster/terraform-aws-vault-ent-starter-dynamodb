variable "aws_region" {
  type        = string
  description = "AWS region to deploy resources into"
  default     = "us-east-1" #~Added default
}

variable "kms_key_id" {
  type        = string
  description = "Specifies the ARN or ID of the AWS KMS customer master key (CMK) to be used to encrypt the secret values in the versions stored in this secret. If you don't specify this value, then Secrets Manager defaults to using the AWS account's default CMK (the one named aws/secretsmanager"
  default     = null
}

variable "recovery_window" {
  type        = number
  description = "Specifies the number of days that AWS Secrets Manager waits before it can delete the secret"
  default     = 0
}

variable "resource_name_prefix" {
  type        = string
  description = "Prefix for resource names (e.g. \"prod\")"
}

# variable related to TLS cert generation
variable "shared_san" {
  type        = string
  description = "This is a shared server name that the certs for all Vault nodes contain. This is the same value you will supply as input to the Vault installation module for the leader_tls_servername variable."
  default     = "vault.server.com"
}

variable "tags" {
  type        = map(string)
  description = "Tags for secrets manager secret"
  default = {
    Vault = "tls-data"
  }
}

//Added - after environment is provisioned. Regenerate needed certificates to include AWS LB dns name.
variable "aws_lb_dns_name" {
  type        = string
  description = "add aws lb dns name as a dns name to certificate"
  #default = "internal-rchao-vault-lb-161636937.us-east-1.elb.amazonaws.com"
  default = "aws_lb.example.com"
}
