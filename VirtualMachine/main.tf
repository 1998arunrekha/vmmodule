resource "azurerm_windows_virtual_machine" "vm001" {
  name                = var.newvm1
  resource_group_name = var.resourcegroup
  location            = var.location
  size                = "Standard_F2"
  admin_username      = "adminarun"
  admin_password      = "Aruna@123456"
  network_interface_ids = [
    azurerm_network_interface.nic.id,
  ]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2016-Datacenter"
    version   = "latest"
  }
}