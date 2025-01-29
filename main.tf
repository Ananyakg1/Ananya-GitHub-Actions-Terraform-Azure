resource "azurerm_resource_group" "rg" {
  name     = lookup({
    dev  = var.resource_group_name_dev,
    qa   = var.resource_group_name_qa,
    prod = var.resource_group_name_prod
  }, var.environment, var.resource_group_name_dev)  # Default to dev if env is missing
  location = var.location
}

resource "azurerm_storage_account" "storage" {
  name                     = lookup({
    dev  = var.storage_account_name_dev,
    qa   = var.storage_account_name_qa,
    prod = var.storage_account_name_prod
  }, var.environment, var.storage_account_name_dev)  # Default to dev

  resource_group_name      = azurerm_resource_group.rg.name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "container" {
  name                  = lookup({
    dev  = var.container_name_dev,
    qa   = var.container_name_qa,
    prod = var.container_name_prod
  }, var.environment, var.container_name_dev)  # Default to dev

  storage_account_name  = azurerm_storage_account.storage.name
  container_access_type = "private"
}





