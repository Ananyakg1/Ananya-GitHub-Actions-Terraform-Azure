
variable "environment" {
  description = "The deployment environment (deploy, qa, prod)"
  default     = "deploy"
  validation {
    condition     = var.environment == "deploy" || var.environment == "qa" || var.environment == "prod"
    error_message = "Environment must be one of 'deploy', 'qa', or 'prod'."
  }
}

variable "resource_group_name" {
  description = "The name of the Resource Group"
  default     = "resourcegroup-${var.environment}" # Dynamically adds environment suffix
}

variable "location" {
  description = "The location for resources"
  default     = "East US"
}

variable "storage_account_name" {
  description = "The name of the Storage Account (must be 3-24 characters, lowercase, letters, and numbers only)"
  default     = "demostorage${var.environment}" # Dynamically adds environment suffix

  validation {
    condition     = length(var.storage_account_name) >= 3 && length(var.storage_account_name) <= 24 && var.storage_account_name == lower(var.storage_account_name)
    error_message = "Storage account name must be 3-24 characters long, lowercase, and contain only letters and numbers."
  }
}

variable "container_name" {
  description = "The name of the Blob Container"
  default     = "tfstatefile-${var.environment}" # Dynamically adds environment suffix
}

variable "tfstate_key" {
  description = "The name of the Terraform state file"
  default     = "${var.environment}.terraform.tfstate" # State file based on environment
}

