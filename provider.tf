terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.26.0"
    }
  }
}

# Terraform State Storage to Azure Storage Container
  backend "azurerm" {
    resource_group_name   = "statefile-rg"
    storage_account_name  = "mystatefile810003596"
    container_name        = "statfile"
    key                   = "terraform.tfstate"
  } 

provider "azurerm" {
  features {}
}

