resource "azurerm_mssql_server" "sqlserver" {
  name                         = var.sql_server_name
  resource_group_name          = azurerm_resource_group.diplomado.name
  location                     = azurerm_resource_group.diplomado.location
  version                      = "12.0"
  administrator_login          = "theadmin"
  administrator_login_password = "Password1234!"
}
