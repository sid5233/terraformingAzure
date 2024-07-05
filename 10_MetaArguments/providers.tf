terraform {
  required_version = ">=1.5.7"

  required_providers {
    azurerm = {
        source = "hashicorp/azurerm"
        version = ">=2.0.0"
    }
    random = {
      source = "hashicorp/random"
      version = ">= 3.0"
    }
  }
}

provider "azurerm" {
  features {
  }
}

resource "random_string" "randomstring" {
  length = 6
  upper = false
  special = false
  numeric = false
}