resource "azurerm_virtual_network" "vnet" {
  name                = var.testvnet1
  location            = var.location
  resource_group_name = var.resourcegroup
  address_space       = ["10.0.0.0/16"]
}
