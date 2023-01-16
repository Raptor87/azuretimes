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
    location = module.rg.location
    resource_group_name = module.rg.name
    storage_account_type = "UltraSSD_LRS"
    create_option = "Empty"
    disk_size_gb = "124"
}