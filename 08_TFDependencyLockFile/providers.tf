terraform {
  required_version = ">=1.0.0"
  required_providers {
    azurerm = {
        source = "hashicorp/azurerm"
        version = "2.92"
    }
    random = {
        source = "hashicorp/random"
        version = "3.6.1"
    }
  }
}

provider "azurerm" {

    features {}

}
provider "random" {}