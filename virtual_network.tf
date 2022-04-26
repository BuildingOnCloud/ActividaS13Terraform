resource "azurerm_virtual_network" "virtualnetwork" {
  name                = var.virtual_network_name
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.diplomado.location
  resource_group_name = azurerm_resource_group.diplomado.name
} 
