terraform {
  required_version = ">=0.14.6"
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = ">=2.20.0"
    }
  }
}

provider "azurerm" {
  subscription_id = var.subscription
  features {}
}

data "azurerm_client_config" "current" {}


resource "azurerm_resource_group" "aro_vnet_resource_group" {
  name     = var.aro_vnet_resource_group_name
  location = var.aro_location

  tags = var.tags
}

