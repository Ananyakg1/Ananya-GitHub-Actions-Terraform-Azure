variable "environment" {
  description = "The environment (dev, qa, prod)"
  default     = "dev"
}

variable "location" {
  description = "The location for resources"
  default     = "East US"
}

variable "resource_group_name_dev" {
  default = "newresourcegroup1-dev"
}

variable "resource_group_name_qa" {
  default = "new1resourcegroup1-qa"
}

variable "resource_group_name_prod" {
  default = "new2resourcegroup1-prod"
}

variable "storage_account_name_dev" {
  default = "newstoragedevnew123"
}

variable "storage_account_name_qa" {
  default = "new1storageqanew123"
}

variable "storage_account_name_prod" {
  default = "new2storageprodnew123"
}

variable "container_name_dev" {
  default = "newtfstatefile-dev"
}

variable "container_name_qa" {
  default = "new1tfstatefile-qa"
}

variable "container_name_prod" {
  default = "new2tfstatefile-prod"
}





