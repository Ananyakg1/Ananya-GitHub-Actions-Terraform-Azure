terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.75"
    }
  }
}

provider "azurerm" {
  features {}

  subscription_id = env.AZURE_SUBSCRIPTION_ID
  client_id       = env.AZURE_AD_CLIENT_ID
  client_secret   = env.AZURE_AD_CLIENT_SECRET
  tenant_id       = env.AZURE_AD_TENANT_ID
}
 

