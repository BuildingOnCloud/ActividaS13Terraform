resource "azurerm_resource_group" "diplomado" {
  name     = var.name
  location = var.location
  tags = {
    diplomado = "diplomado"
  }
} 
