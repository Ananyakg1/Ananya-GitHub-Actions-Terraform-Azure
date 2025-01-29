variable "resource_group_name" {
  description = "The base name of the Resource Group"
  default     = "resourcegroupnew3" # Base name for resource group
}

variable "location" {
  description = "The location for resources"
  default     = "East US"
}

variable "storage_account_name" {
  description = "The base name of the Storage Account (must be 3-24 characters, lowercase, letters, and numbers only)"
  default     = "demostoragenew3" # Base name for storage account

  validation {
    condition     = length(var.storage_account_name) >= 3 && length(var.storage_account_name) <= 24 && var.storage_account_name == lower(var.storage_account_name)
    error_message = "Storage account name must be 3-24 characters long, lowercase, and contain only letters and numbers."
  }
}

variable "container_name" {
  description = "The base name of the Blob Container"
  default     = "tfstatefilenew3" # Base name for blob container
}

variable "tfstate_key" {
  description = "The base name of the Terraform state file"
  default     = "dev.terraform.tfstate" # Base name for Terraform state file
}

variable "environment" {
  description = "The environment (e.g., deploy, qa, prod)"
  default     = "dev" # Default environment
}
