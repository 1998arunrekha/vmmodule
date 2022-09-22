resource "azurerm_virtual_network" "vnet" {
  name                = var.testvnet1
  location            = var.location
  resource_group_name = var.resourcegroup
  address_space       = ["10.0.0.0/16"]
}

resource "azurerm_subnet" "subnet" {
  name                 = var.subnet11
  resource_group_name  = var.resourcegroup
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = ["10.0.2.0/24"]
}