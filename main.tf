terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.95.0"
    }
  }
}

provider "azurerm" {
  features {

  }
}


resource "azurerm_resource_group" "this" {
  name     = "RG-uyi"
  location = "eastus2"
}

resource "azurerm_virtual_network" "this" {
  name                = "vnet-uyi"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.this.location
  resource_group_name = azurerm_resource_group.this.name
}