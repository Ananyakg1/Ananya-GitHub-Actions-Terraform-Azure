resource "azurerm_resource_group" "rg" {
  name     = "demores-${var.env}"
  location = var.location
}

resource "azurerm_storage_account" "storage" {
  name                     = "demosto-${var.env}"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "container" {
  name                  = "democon-${var.env}"
  storage_account_name  = azurerm_storage_account.storage.name
  container_access_type = "private"
}









