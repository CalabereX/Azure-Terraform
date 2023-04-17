resource "azurerm_network_security_group" "rg" {
  name                = "sergio-nsg"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  
  
  security_rule{
    name                       ="Sergio-rule"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Deny"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "0 - 1024"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
  tags = {
    training = "Sergio"
  }
}