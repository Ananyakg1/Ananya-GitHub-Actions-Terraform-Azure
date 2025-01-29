variable "environment" {
  description = "The environment (dev, qa, prod)"
  default     = "dev"
}

variable "location" {
  description = "The location for resources"
  default     = "East US"
}

variable "resource_group_name_dev" {
  default = "4mainresourcegroup1-dev"
}

variable "resource_group_name_qa" {
  default = "5main1resourcegroup1-qa"
}

variable "resource_group_name_prod" {
  default = "6main2resourcegroup1-prod"
}

variable "storage_account_name_dev" {
  default = "4mainstoragedevnew123"
}

variable "storage_account_name_qa" {
  default = "5main1storageqanew123"
}

variable "storage_account_name_prod" {
  default = "6main2storageprodnew123"
}

variable "container_name_dev" {
  default = "4maintfstatefile-dev"
}

variable "container_name_qa" {
  default = "5main1tfstatefile-qa"
}

variable "container_name_prod" {
  default = "6main2tfstatefile-prod"
}





