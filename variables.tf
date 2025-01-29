variable "environment" {
  description = "The environment (dev, qa, prod)"
  default     = "dev"
}

variable "location" {
  description = "The location for resources"
  default     = "East US"
}

variable "resource_group_name_dev" {
  default = "resourcegroup-dev"
}

variable "resource_group_name_qa" {
  default = "resourcegroup-qa"
}

variable "resource_group_name_prod" {
  default = "resourcegroup-prod"
}

variable "storage_account_name_dev" {
  default = "storagedevnew123"
}

variable "storage_account_name_qa" {
  default = "storageqanew123"
}

variable "storage_account_name_prod" {
  default = "storageprodnew123"
}

variable "container_name_dev" {
  default = "tfstatefile-dev"
}

variable "container_name_qa" {
  default = "tfstatefile-qa"
}

variable "container_name_prod" {
  default = "tfstatefile-prod"
}





