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
  depends_on = [ azurerm_resource_group.this ]
}

resource "azurerm_subnet" "this" {
  name                 = "subnet-uyi"
  resource_group_name  = azurerm_resource_group.this.name
  virtual_network_name = azurerm_virtual_network.this.name
  address_prefixes     = ["10.0.2.0/24"]
}