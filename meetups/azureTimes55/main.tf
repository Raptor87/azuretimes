module "rg" {

  source = "../../Terraform/modules/azurerm_rg"
  name = var.name
  location = var.location
  tags = var.tags

}


resource "azurerm_managed_disk" "md-ultra" {

    name = var.disk_name
    location = azurerm_resource_group.rg.location
    resource_group_name = azurerm_resource_group.rg.name
    storage_account_type = var.disk_sku
    create_option = var.disk_creation_option 
    disk_size_gb = var.disk_size
  
}