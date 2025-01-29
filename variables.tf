variable "environment" {
  description = "The environment (dev, qa, prod)"
  default     = "dev"
}

variable "location" {
  description = "The location for resources"
  default     = "East US"
}

variable "resource_group_name_dev" {
  default = "main1resourcegroup1-dev"
}

variable "resource_group_name_qa" {
  default = "main2resourcegroup1-qa"
}

variable "resource_group_name_prod" {
  default = "main3resourcegroup1-prod"
}

variable "storage_account_name_dev" {
  default = "main1storagedevnew123"
}

variable "storage_account_name_qa" {
  default = "main2storageqanew123"
}

variable "storage_account_name_prod" {
  default = "main3storageprodnew123"
}

variable "container_name_dev" {
  default = "main1tfstatefile-dev"
}

variable "container_name_qa" {
  default = "main2tfstatefile-qa"
}

variable "container_name_prod" {
  default = "main3tfstatefile-prod"
}





