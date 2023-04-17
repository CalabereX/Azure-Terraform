resource "azurerm_postgresql_server" "ax" {
  name               = "sergio-postgresql-server"
  location            = azurerm_resource_group.ax.location
  resource_group_name = azurerm_resource_group.ax.name

  sku_name = "GP_Gen5_2"
  #Almacenamiento
  storage_mb            = 51200
  backup_retention_days = 7
  geo_redundant_backup_enabled = false
  
  #Cuenta admin
  administrator_login          = "adminSQL"
  administrator_login_password = "pa$$word1234"
  ssl_enforcement_enabled      = true
  version = "11"
}

resource "azurerm_postgresql_database" "ax" {
  name                = "Sergiodb"
  resource_group_name = azurerm_resource_group.ax.name
  server_name         = azurerm_postgresql_server.ax.name
  charset             = "UTF8"
  collation           = "en_US.UTF8"
}