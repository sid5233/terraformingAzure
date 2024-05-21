resource "azurerm_resource_group" "myrg1" {
  name = "myrg-1"
  location = "East US"
}

resource "random_string" "randomstr" {
  length = 16
  special = false
  upper = false
}

resource "azurerm_storage_account" "mystorage" {
  name                     = "mysa${random_string.randomstr.id}"
  resource_group_name      = azurerm_resource_group.myrg1.name
  location                 = azurerm_resource_group.myrg1.location
  account_tier             = "Standard"
  account_replication_type = "GRS"


  tags = {
    environment = "staging"
  }

}