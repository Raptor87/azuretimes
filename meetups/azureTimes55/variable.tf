variable azuretimes {
    description = "Azure Times Meetup Details"

    type = object ({
        meetup    = string
        location = string
    })
    
    meetup      = "azuretimes55"
    location    = "westeurope"

}



variable "rgname" {

    description = "Azure Resource Group Name"

    type = object ({
        name     = string
        location = string
    })
    
    name     = var.azuretimes.meetup
    location = var.azuretimes.location


}

variable "disk" {

    description = "Azure Managed Disk Config"

    type = object ({
        name     = string
        disk_sku = string
        creation_option = string
        size = string
    })
    
    name            = var.azuretimes.meetup
    disk_sku        = "UltraSSD_LRS"
    creation_option = "Empty"
    size            = "100"

}