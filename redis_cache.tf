resource "azurerm_redis_cache" "rediscache" {
  name = var.redis_cache_name
  location = azurerm_resource_group.diplomado.location
  resource_group_name = azurerm_resource_group.diplomado.name
  capacity = 2
  family = "C"
  sku_name = "Standard"
  enable_non_ssl_port = false
  minimum_tls_version = "1.2"

  redis_configuration {
    
  }
  
}
