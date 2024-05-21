resource "azurerm_resource_group" "myrg1" {
  name = "myrg-1"
  location = "East US"
}

resource "azurerm_resource_group" "myrg2" {
  name = "myrg-2"
  location = "West Us"
  provider = azurerm.provider2
  #This resource uses custom provider related configuration.
}