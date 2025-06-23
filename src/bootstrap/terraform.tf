terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.26.0"
    }
  }
}

provider "azurerm" {
  features {}
  storage_use_azuread = true
  subscription_id     = local.subscription_id
}

data "azurerm_client_config" "current" {}
