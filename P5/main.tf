#Establecer el origen y la version del proveedor Azure a usar
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}

#Configuración del proveedor azure (es necesario que exista esta función)
provider "azurerm" {
  features {
  }
}
#Grupo de recursos
resource "azurerm_resource_group" "ax" {
  name     = "SergioSQL"
  location = "West Europe"

}