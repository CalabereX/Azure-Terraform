resource "azurerm_virtual_network" "rg" {
  name                = "Sergio-Vnet"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  address_space       = ["192.168.0.0/16"]
  tags = {
    "Training" = "Sergio"
  }
}
resource "azurerm_subnet" "rg" {
  name                 = "subred1"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.rg.name
  address_prefixes     = ["192.168.0.0/24"]
}