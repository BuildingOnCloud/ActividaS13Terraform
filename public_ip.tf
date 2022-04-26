resource "azurerm_public_ip" "publicip" {
  name = var.public_ip_name
  resource_group_name = azurerm_resource_group.diplomado.name
  location = azurerm_resource_group.diplomado.location
  allocation_method = "Static"

  tags = {
    diplomado = var.grupo
  }
  
}
