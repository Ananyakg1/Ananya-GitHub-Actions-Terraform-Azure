variable "resource_group_name" {
  description = "The base name of the Resource Group"
  default     = "resourcegroupnew4" # Updated base name for resource group
}

variable "location" {
  description = "The location for resources"
  default     = "East US"
}

variable "storage_account_name" {
  description = "The base name of the Storage Account (must be 3-24 characters, lowercase, letters, and numbers only)"
  default     = "demostoragenew4" # Updated base name for storage account

  validation {
    condition     = length(var.storage_account_name) >= 3 && length(var.storage_account_name) <= 24 && var.storage_account_name == lower(var.storage_account_name)
    error_message = "Storage account name must be 3-24 characters long, lowercase, and contain only letters and numbers."
  }
}

variable "container_name" {
  description = "The base name of the Blob Container"
  default     = "tfstatefilenew4" # Updated base name for blob container
}

variable "tfstate_key" {
  description = "The base name of the Terraform state file"
  default     = "terraform.tfstate" # Generalized state file name
}

variable "environment" {
  description = "The environment (e.g., dev, qa, prod)"
  type        = string
  default     = "dev" # Default environment
}

variable "allowed_environments" {
  description = "List of allowed environments"
  type        = list(string)
  default     = ["dev", "qa", "prod"]
}

# Validate the environment variable
variable "validated_environment" {
  description = "Validated environment"
  default     = "dev"
  validation {
    condition     = contains(var.allowed_environments, var.environment)
    error_message = "Invalid environment. Allowed values are dev, qa, prod."
  }
}

