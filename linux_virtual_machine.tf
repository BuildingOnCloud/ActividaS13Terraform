#resource "azurerm_linux_virtual_machine" "virtualmachine" {
#  name                = var.virtual_machine_name
#  resource_group_name = azurerm_resource_group.diplomado.name
#  location            = azurerm_resource_group.diplomado.location
#  size                = "Standard_DS1"
#
#  network_interface_ids = [
#    azurerm_network_interface.networkinterface.id,
#  ]
#
#  os_disk {
#    caching              = "ReadWrite"
#    storage_account_type = "Standard_LRS"
#  }
#
#  source_image_reference {
#    publisher = "Canonical"
#    offer     = "UbuntuServer"
#    sku       = "16.04-LTS"
#    version   = "latest"
#  }
#
#  computer_name  = "hostname"
#  admin_username = "testadmin"
#  admin_password = "Password1234!"
#
#  disable_password_authentication = false
#}
