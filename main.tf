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
  name     = "RG-uyi2"
  location = "eastus2"
}

# resource "azurerm_virtual_network" "this" {
#   name                = "vnet-uyi"
#   address_space       = ["10.0.0.0/16"]
#   location            = azurerm_resource_group.this.location
#   resource_group_name = azurerm_resource_group.this.name
#   depends_on = [ azurerm_resource_group.this ]
# }

# resource "azurerm_subnet" "this" {
#   name                 = "subnet-uyi"
#   resource_group_name  = azurerm_resource_group.this.name
#   virtual_network_name = azurerm_virtual_network.this.name
#   address_prefixes     = ["10.0.2.0/24"]
# }

# resource "azurerm_network_interface" "this" {
#   name                = "nic-uyi"
#   location            = azurerm_resource_group.this.location
#   resource_group_name = azurerm_resource_group.this.name

#   ip_configuration {
#     name                          = "internal"
#     subnet_id                     = azurerm_subnet.this.id
#     private_ip_address_allocation = "Dynamic"
#   }
# }

# resource "azurerm_linux_virtual_machine" "this" {
#   name                = "vm-uyi"
#   resource_group_name = azurerm_resource_group.this.name
#   location            = azurerm_resource_group.this.location
#   size                = "Standard_B1s"
#   admin_username      = "adminuser"
#   admin_password      = "AdminUser1234"
#   disable_password_authentication = false
#   network_interface_ids = [
#     azurerm_network_interface.this.id,
#   ]

#   os_disk {
#     caching              = "ReadWrite"
#     storage_account_type = "Standard_LRS"
#   }

#   source_image_reference {
#     publisher = "Canonical"
#     offer     = "0001-com-ubuntu-server-jammy"
#     sku       = "22_04-lts"
#     version   = "latest"
#   }
# }

# resource "azurerm_storage_account" "this" {
#   name                     = "storageuyi"
#   resource_group_name      = azurerm_resource_group.this.name
#   location                 = azurerm_resource_group.this.location
#   account_tier             = "Standard"
#   account_replication_type = "GRS"

#   tags = {
#     environment = "staging"
#   }
# }
