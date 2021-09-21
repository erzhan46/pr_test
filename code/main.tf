terraform {
  required_version = ">= 0.12.0"
}

provider "azurerm" {
  subscription_id = var.subscription
  version         = ">= 2.17"
  features {}
}

data "azurerm_client_config" "current" {}


resource "azurerm_resource_group" "aro_vnet_resource_group" {
  name     = var.aro_vnet_resource_group_name
  location = var.aro_location
  tags     = var.tags
}

