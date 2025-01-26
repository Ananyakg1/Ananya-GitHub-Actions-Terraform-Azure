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
}

provider "azurerm" {
  alias           = "other"
  features {}

  tenant_id       = "AZURE_AD_TENANT_ID"
  client_id       = "AZURE_AD_CLIENT_ID"
  client_secret   = "AZURE_AD_CLIENT_SECRET"
  subscription_id = "AZURE_SUBSCRIPTION_ID"
}
