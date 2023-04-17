resource "azurerm_linux_virtual_machine" "rg" {
  name                = "Sergio-VM"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  size                = "Standard_B1s"
  admin_username      = "adminuser"
  network_interface_ids = [
    azurerm_network_interface.rg.id,
  ]

  admin_ssh_key {
    username   = "adminuser"
    public_key = file("~/.ssh/id_rsa.pub")
  }

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }
  source_image_reference {
    offer                 = "0001-com-ubuntu-server-focal"
    publisher             = "Canonical"
    sku                   = "20_04-lts-gen2"
    version               = "latest"
  }
}
