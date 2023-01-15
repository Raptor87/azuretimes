module "rg" {
  for_each = { for rg in var.rg_list : rg.name => rg }
  source = "../../Terraform/modules/azurerm_rg"
  name = "azuretimes55"
  location = "westeurope"
    tags = {
        name = "name"
        }
}


resource "azurerm_managed_disk" "md-ultra" {
    for_each = { for disk in var.disk_list : disk.disk_name => disk }
    name = "test"
    location = azurerm_resource_group.rg.location
    resource_group_name = azurerm_resource_group.rg.name
    storage_account_type = "UltraSSD_LRS"
    disk_size_gb = "124"

  
}