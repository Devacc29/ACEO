provider "azurerm" {
  subscription_id = var.subscription_id
  client_id       = var.client_id
  client_secret   = var.client_secret
  tenant_id       = var.tenant_id
  features {}
}

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=4.1.0"
    }
  }
  required_version = "~>1.6.4"
  backend "azurerm" {}
}

terraform {
  backend "azurerm" {
    resource_group_name  = "tf-str-29"
    storage_account_name = "tfstrbck29"
    container_name       = "terraform-state"
    key                  = "rg.terraform.tfstate" 
  }
}