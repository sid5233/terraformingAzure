resource "azurerm_resource_group" "tfstaterg" {
  name = var.resource_group_name
  location = var.resource_group_location
}

resource "azurerm_storage_account" "tfstg" {
  name                     = var.storageaccountname
  resource_group_name      = var.resource_group_name
  location                 = var.resource_group_location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = "staging"
  }
}