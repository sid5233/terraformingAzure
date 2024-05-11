provider "azurerm" {
  features {}
}

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.0.0"
    }
  }
}

resource "azurerm_resource_group" "tfRG1" {
  name = "terraformingAzureRG"
  location = "centralindia"
}