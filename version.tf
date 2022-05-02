# Removing - as getting errors from using Terraform 1.1.x about incompatibilities
#
# │ Error: Unrecognized remote plugin message:
# │
# │ This usually means that the plugin is either invalid or simply
# │ needs to be recompiled to support the latest protocol.
/*
terraform {
  required_version = ">= 0.15"

  required_providers {
    aws = ">= 3.0.0, < 4.0.0"
  }
}*/
