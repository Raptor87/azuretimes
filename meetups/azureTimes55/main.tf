module "rg" {
  source = "../../Terraform/modules/azurerm_rg"
  name = "azuretimes55"
  location = "westeurope"
    tags = {
        name = "name"
        }
}


resource "azurerm_managed_disk" "md-ultra" {
    name = "test"
    location = azurerm_resource_group.rg.location
    resource_group_name = azurerm_resource_group.rg.name
    storage_account_type = "UltraSSD_LRS"
    disk_size_gb = "124"
}