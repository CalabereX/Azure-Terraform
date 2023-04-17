terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {
    
  }
}

resource "azurerm_resource_group" "rg" {
  name = "pruebaLinux"
  location = "West Europe"
  tags = {
    envionment = "Terraform"
    Recourse_group = "Alias"
    Code = "223457"
    owner = "BMW"
  }
}