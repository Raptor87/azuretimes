module "rg" {
  for_each = { for rg in var.rg_list : rg.name => rg }
  source = "../../Terraform/modules/azurerm_rg"
  name = var.value.name
  location = var.value.location
  tags = var.value.tags

}


resource "azurerm_managed_disk" "md-ultra" {
    for_each = { for disk in var.disk_list : disk.disk_name => disk }
    name = var.value.disk_name
    location = azurerm_resource_group.rg.location
    resource_group_name = azurerm_resource_group.rg.name
    storage_account_type = var.value.disk_sku
    create_option = var.value.disk_creation_option 
    disk_size_gb = var.value.disk_size
  
}