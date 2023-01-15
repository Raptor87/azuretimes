resource "azurerm_managed_disk" "disk" {

 name                   = var.name
 location               = azurerm_resource_group.rg.location
 resource_group_name    = azurerm_resource_group.rg.name
 storage_account_type   = var.disk_sku
 create_option          = var.creation_option 
 disk_size_gb           = var.size
  
}