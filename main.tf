resource "azurerm_resource_group" "rg" {
  name     = "${var.resource_group_name}-${var.environment}" # Unique name per environment
  location = var.location
}

resource "azurerm_storage_account" "storage" {
  name                     = "${var.storage_account_name}${var.environment}" # Ensuring uniqueness
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "container" {
  name                  = "${var.container_name}-${var.environment}" # Appends environment suffix
  storage_account_name  = azurerm_storage_account.storage.name
  container_access_type = "private"
}



