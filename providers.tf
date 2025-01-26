terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.75"
    }
  }
}

provider "azurerm" {
alias = "other"
  features {
    
  }
  subscription_id = "AZURE_SUBSCRIPTION_ID"
  tenant_id       = "AZURE_AD_TENANT_ID"
  client_id       = "AZURE_AD_CLIENT_ID"
  client_secret   = "AZURE_AD_CLIENT_SECRET"
 
}
