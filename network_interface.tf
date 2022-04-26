resource "azurerm_network_interface" "networkinterface" {
  name                = var.network_interface_name
  location            = azurerm_resource_group.diplomado.location
  resource_group_name = azurerm_resource_group.diplomado.name
 
  ip_configuration {
    name = var.ip_configuration_name
    subnet_id = azurerm_subnet.subnet.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id = azurerm_public_ip.publicip.id
  }
}
