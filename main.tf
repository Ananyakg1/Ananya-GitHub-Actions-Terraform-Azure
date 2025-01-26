# Create the Resource Group
resource "azurerm_resource_group" "example" {
  provider = azurerm.other
  name     = var.resource_group_name
  location = var.location
}

# Create the Storage Account
resource "azurerm_storage_account" "example" {
  name                     = var.storage_account_name # Ensure lowercase, 3-24 characters
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  # Ensure secure communication
  min_tls_version = "TLS1_2"

  tags = {
    Environment = "Demo"
  }
}

# Create the Blob Container
resource "azurerm_storage_container" "example" {
  name                  = var.container_name
  storage_account_name  = azurerm_storage_account.example.name
  container_access_type = "private"
}
