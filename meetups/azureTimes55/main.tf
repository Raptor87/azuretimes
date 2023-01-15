module "rg" {
  source = "../../Terraform/modules/azurerm_rg"
  name = var.rg.name
  location = var.rg.location
  tags = var.rg.tags
}


resource "azurerm_managed_disk" "md-ultra" {

    name = var.disk.name
    location = azurerm_resource_group.rg.location
    resource_group_name = azurerm_resource_group.rg.name
    storage_account_type = var.disk.disk_sku
    create_option = var.disk.creation_option 
    disk_size_gb = var.disk.size
  
}