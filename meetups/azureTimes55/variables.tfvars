name = "azuretimes55"
location = "westeurope"
tags = {
    name = "name"
}



variable "disk" {

    description = "Azure Managed Disk Config"

    type = object ({
        name     = string
        disk_sku = string
        creation_option = string
        size = string
    })





}