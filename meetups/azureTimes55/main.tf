resource "azurerm_resource_group" "rg" {
    name = var.rgname.name
    location = var.rgname.location
  
}