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
  
  subscription_id = "de5d5e82-d451-4b4a-8f92-5f2feeb1a318"
  tenant_id = "72374233-443e-4c43-856d-6f9c86f0455a"
  client_id = "19a4b959-99ac-4041-a747-b50b065bbf8b"
  client_secret = "Anx8Q~.J_NHgblcNt0SOFVGvuOgykVgRa~GXqaeb"
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
