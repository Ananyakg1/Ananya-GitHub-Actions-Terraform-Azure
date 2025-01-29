variable "environment" {
  description = "The environment (dev, qa, prod)"
  default     = "dev"
}

variable "location" {
  description = "The location for resources"
  default     = "East US"
}

variable "resource_group_name_dev" {
  default = "mainresourcegroup1-dev"
}

variable "resource_group_name_qa" {
  default = "main1resourcegroup1-qa"
}

variable "resource_group_name_prod" {
  default = "main2resourcegroup1-prod"
}

variable "storage_account_name_dev" {
  default = "mainstoragedevnew123"
}

variable "storage_account_name_qa" {
  default = "main1storageqanew123"
}

variable "storage_account_name_prod" {
  default = "main2storageprodnew123"
}

variable "container_name_dev" {
  default = "maintfstatefile-dev"
}

variable "container_name_qa" {
  default = "main1tfstatefile-qa"
}

variable "container_name_prod" {
  default = "main2tfstatefile-prod"
}





