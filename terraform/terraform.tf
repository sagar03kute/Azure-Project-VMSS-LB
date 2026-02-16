# Terraform configuration block
terraform {
  required_version = ">= 1.0"
  
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.60.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.1"
    }
  }

  # Uncomment and configure backend for remote state storage
  # backend "azurerm" {
  #   resource_group_name  = "tfstate-rg"
  #   storage_account_name = "tfstate{random_id}"
  #   container_name       = "tfstate"
  #   key                  = "vmss-lb.terraform.tfstate"
  # }
}