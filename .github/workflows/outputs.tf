output "resource_group_name" {
  description = "The name of the Resource Group"
  value       = azurerm_resource_group.example.name
}

output "storage_account_name" {
  description = "The name of the Storage Account"
  value       = azurerm_storage_account.example.name
}

output "container_name" {
  description = "The name of the Blob Container"
  value       = azurerm_storage_container.example.name
}
