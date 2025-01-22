variable "resource_group_name" {
  description = "The name of the Resource Group"
  default     = "ananyaresourcegroup"
}

variable "location" {
  description = "The location for resources"
  default     = "East US"
}

variable "storage_account_name" {
  description = "The name of the Storage Account (must be 3-24 characters, lowercase, letters, and numbers only)"
  default     = "ananyademostorage"

  validation {
    condition     = length(var.storage_account_name) >= 3 && length(var.storage_account_name) <= 24 && var.storage_account_name == lower(var.storage_account_name)
    error_message = "Storage account name must be 3-24 characters long, lowercase, and contain only letters and numbers."
  }
}

variable "container_name" {
  description = "The name of the Blob Container"
  default     = "ananyatfstatefile"
}

variable "tfstate_key" {
  description = "The name of the Terraform state file"
  default     = "dev.terraform.tfstate"
}
