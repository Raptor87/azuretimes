terraform {
  backend "azurerm" {
    container_name       = "state"
    key                  = "terraform.tfstate"
    resource_group_name  = "rg-weeu-state"
    storage_account_name = "azuretimesstate"
  }
}