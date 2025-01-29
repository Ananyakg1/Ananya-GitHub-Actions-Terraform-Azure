resource "azurerm_resource_group" "rg" {
  name     = (var.environment == "dev" ? var.resource_group_name_dev : 
             (var.environment == "qa" ? var.resource_group_name_qa : var.resource_group_name_prod))
  location = var.location
}

resource "azurerm_storage_account" "storage" {
  name                     = (var.environment == "dev" ? var.storage_account_name_dev : 
                             (var.environment == "qa" ? var.storage_account_name_qa : var.storage_account_name_prod))
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "container" {
  name                  = (var.environment == "dev" ? var.container_name_dev : 
                          (var.environment == "qa" ? var.container_name_qa : var.container_name_prod))
  storage_account_name  = azurerm_storage_account.storage.name
  container_access_type = "private"
}








