resource "azurerm_subnet" "subnet" {
  name                 = var.subnet11
  resource_group_name  = var.resourcegroup
  virtual_network_name = module.VirtualNetwork.vnet.name
  address_prefixes     = ["10.0.2.0/24"]
}