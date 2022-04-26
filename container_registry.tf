resource "azurerm_container_registry" "acr" {
  name                = var.container_registry_name
  resource_group_name = azurerm_resource_group.diplomado.name
  location            = azurerm_resource_group.diplomado.location
  sku                 = "Basic"
  admin_enabled       = true
}
