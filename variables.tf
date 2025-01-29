variable "environment" {
  description = "The environment (dev, qa, prod)"
  default     = "dev"
}

variable "location" {
  description = "The location for resources"
  default     = "East US"
}

variable "resource_group_name_dev" {
  default = "resourcegroup1-dev"
}

variable "resource_group_name_qa" {
  default = "resourcegroup1-qa"
}

variable "resource_group_name_prod" {
  default = "resourcegroup1-prod"
}

variable "storage_account_name_dev" {
  default = "2storagedevnew123"
}

variable "storage_account_name_qa" {
  default = "2storageqanew123"
}

variable "storage_account_name_prod" {
  default = "2storageprodnew123"
}

variable "container_name_dev" {
  default = "2tfstatefile-dev"
}

variable "container_name_qa" {
  default = "2tfstatefile-qa"
}

variable "container_name_prod" {
  default = "2tfstatefile-prod"
}





