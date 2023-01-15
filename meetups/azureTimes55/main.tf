module "rg" {

  source = "../../Terraform/modules/azurerm_rg"
  name = var.rgname.name
  location = var.rgname.location
  tags = var.rgname.tags

}


resource "azurerm_managed_disk" "md-ultra" {

    name = var.disk.name
    location = azurerm_resource_group.rg.location
    resource_group_name = azurerm_resource_group.rg.name
    storage_account_type = var.disk.disk_sku
    create_option = var.disk.creation_option 
    disk_size_gb = var.disk.size
  
}