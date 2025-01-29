variable "environment" {
  description = "The environment (dev, qa, prod)"
  type        = string
}

variable "location" {
  description = "The location for resources"
  default     = "East US"
}

variable "resource_group_names" {
  description = "Resource group names for different environments"
  type        = map(string)
  default = {
    dev  = "resourcegroup-dev"
    qa   = "resourcegroup-qa"
    prod = "resourcegroup-prod"
  }
}

variable "storage_account_names" {
  description = "Storage account names for different environments"
  type        = map(string)
  default = {
    dev  = "storagedev123"
    qa   = "storageqa123"
    prod = "storageprod123"
  }
}

variable "container_names" {
  description = "Blob container names for different environments"
  type        = map(string)
  default = {
    dev  = "tfstatefile-dev"
    qa   = "tfstatefile-qa"
    prod = "tfstatefile-prod"
  }
}




