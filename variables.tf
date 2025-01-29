# Define environment variable (dev, qa, prod)
variable "environment" {
  description = "The environment (e.g., dev, qa, prod)"
  type        = string
  default     = "dev" # Default value, can be overridden per environment
}

# Resource group names for different environments
variable "resource_group_name_dev" {
  description = "The name of the Resource Group for the dev environment"
  default     = "resourcegroup-dev"
}

variable "resource_group_name_qa" {
  description = "The name of the Resource Group for the QA environment"
  default     = "resourcegroup-qa"
}

variable "resource_group_name_prod" {
  description = "The name of the Resource Group for the prod environment"
  default     = "resourcegroup-prod"
}

# Storage account names for different environments
variable "storage_account_name_dev" {
  description = "The name of the Storage Account for the dev environment"
  default     = "storagedev"
}

variable "storage_account_name_qa" {
  description = "The name of the Storage Account for the qa environment"
  default     = "storageqa"
}

variable "storage_account_name_prod" {
  description = "The name of the Storage Account for the prod environment"
  default     = "storageprod"
}

# Blob container names for different environments
variable "container_name_dev" {
  description = "The name of the container for the dev environment"
  default     = "container-dev"
}

variable "container_name_qa" {
  description = "The name of the container for the qa environment"
  default     = "container-qa"
}

variable "container_name_prod" {
  description = "The name of the container for the prod environment"
  default     = "container-prod"
}

# Location of resources
variable "location" {
  description = "The location of the resources"
  default     = "East US"
}



