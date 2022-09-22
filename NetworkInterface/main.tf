resource "azurerm_network_interface" "nic" {
  name                = var.nic1
  location            = var.location
  resource_group_name = var.resourcegroup

  ip_configuration {
    name                          = "internal"
    subnet_id                     = module.Subnet.subnet_name_out.subnet.id
    private_ip_address_allocation = "Dynamic"
  }
}