terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}

provider "azurerm" {
  features{}
  
  subscription_id = ""
  tenant_id = ""
  client_id = ""
  client_secret = ""
}

resource "azurerm_resource_group" "myresourcegroup" {
  name     = "TFE1"
  location = "canadaeast"

  tags = {
    environment = "Production"
  }
}
resource "azurerm_virtual_network" "vnet" {
  name                = "TFE1"
  resource_group_name = "TFE1"
  location            = "canadaeast"
  address_space       = ["10.254.0.0/20"]
  
}
