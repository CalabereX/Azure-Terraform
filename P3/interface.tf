resource "azurerm_network_interface" "rg" {
  name                = "sergio-nic"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.rg.id
    private_ip_address_allocation = "Dynamic"
  }
}
resource "azurerm_network_interface_security_group_association" "rg" {
  network_interface_id      = azurerm_network_interface.rg.id
  network_security_group_id = azurerm_network_security_group.rg.id
}