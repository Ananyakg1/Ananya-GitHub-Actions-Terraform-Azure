variable "environment" {
  description = "The environment (dev, qa, prod)"
  default     = "dev"
}

variable "location" {
  description = "The location for resources"
  default     = "East US"
}

variable "resource_group_name_dev" {
  default = "1mainresourcegroup1-dev"
}

variable "resource_group_name_qa" {
  default = "2main1resourcegroup1-qa"
}

variable "resource_group_name_prod" {
  default = "3main2resourcegroup1-prod"
}

variable "storage_account_name_dev" {
  default = "1mainstoragedevnew123"
}

variable "storage_account_name_qa" {
  default = "2main1storageqanew123"
}

variable "storage_account_name_prod" {
  default = "3main2storageprodnew123"
}

variable "container_name_dev" {
  default = "1maintfstatefile-dev"
}

variable "container_name_qa" {
  default = "2main1tfstatefile-qa"
}

variable "container_name_prod" {
  default = "3main2tfstatefile-prod"
}





