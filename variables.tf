variable "resource_group_name_dev" {
  description = "The name of the Resource Group for Dev"
  default     = "resourcegroup-dev-unique"  # New name for Dev resource group
}

variable "resource_group_name_qa" {
  description = "The name of the Resource Group for QA"
  default     = "resourcegroup-qa-unique"   # New name for QA resource group
}

variable "resource_group_name_prod" {
  description = "The name of the Resource Group for Prod"
  default     = "resourcegroup-prod-unique" # New name for Prod resource group
}

variable "location" {
  description = "The location for resources"
  default     = "East US"
}

variable "storage_account_name_dev" {
  description = "The name of the Storage Account for Dev"
  default     = "storagedevunique"  # New name for Dev storage account
}

variable "storage_account_name_qa" {
  description = "The name of the Storage Account for QA"
  default     = "storageqaunique"   # New name for QA storage account
}

variable "storage_account_name_prod" {
  description = "The name of the Storage Account for Prod"
  default     = "storageprodunique" # New name for Prod storage account
}

variable "container_name_dev" {
  description = "The name of the Blob Container for Dev"
  default     = "containerdevunique"  # New name for Dev container
}

variable "container_name_qa" {
  description = "The name of the Blob Container for QA"
  default     = "containerqaunique"   # New name for QA container
}

variable "container_name_prod" {
  description = "The name of the Blob Container for Prod"
  default     = "containerprodunique" # New name for Prod container
}



