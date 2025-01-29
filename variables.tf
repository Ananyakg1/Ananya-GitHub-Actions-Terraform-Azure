variable "env" {
  description = "The environment name"
  type        = string
}
variable "environment" {
  description = "The environment (dev, qa, prod)"
  default     = "dev"
}

variable "location" {
  description = "The location for resources"
  default     = "East US"
}

variable "resource_group_name_dev" {
  default = "demoresourcegroup1-dev"
}

variable "resource_group_name_qa" {
  default = "demoresourcegroup1-qa"
}

variable "resource_group_name_prod" {
  default = "demoresourcegroup1-prod"
}

variable "storage_account_name_dev" {
  default = "demostoragedevnew123"
}

variable "storage_account_name_qa" {
  default = "demostorageqanew123"
}

variable "storage_account_name_prod" {
  default = "demostorageprodnew123"
}

variable "container_name_dev" {
  default = "demotfstatefile-dev"
}

variable "container_name_qa" {
  default = "demotfstatefile-qa"
}

variable "container_name_prod" {
  default = "demotfstatefile-prod"
}





