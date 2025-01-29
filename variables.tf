variable "environment" {
  description = "The environment (e.g., dev, qa, prod)"
  default     = "dev"
}

variable "location" {
  description = "The location for resources"
  default     = "East US"
}

# Unique Resource Group Names
variable "resource_group_name_dev" {
  description = "Resource Group name for dev environment"
  default     = "resourcegroup1-dev"
}

variable "resource_group_name_qa" {
  description = "Resource Group name for qa environment"
  default     = "resourcegroup1-qa"
}

variable "resource_group_name_prod" {
  description = "Resource Group name for prod environment"
  default     = "resourcegroup1-prod"
}

# Unique Storage Account Names (Must be globally unique)
variable "storage_account_name_dev" {
  description = "Storage Account name for dev environment"
  default     = "1storagedevnew123"
}

variable "storage_account_name_qa" {
  description = "Storage Account name for qa environment"
  default     = "1storageqanew123"
}

variable "storage_account_name_prod" {
  description = "Storage Account name for prod environment"
  default     = "1storageprodnew123"
}

# Unique Container Names
variable "container_name_dev" {
  description = "Blob Container name for dev environment"
  default     = "tfstatefile1-dev"
}

variable "container_name_qa" {
  description = "Blob Container name for qa environment"
  default     = "tfstatefile1-qa"
}

variable "container_name_prod" {
  description = "Blob Container name for prod environment"
  default     = "tfstatefile1-prod"
}

variable "tfstate_key" {
  description = "The base name of the Terraform state file"
  default     = "terraform.tfstate"
}


