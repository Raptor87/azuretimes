variable "azuretimes" {

    description = "Azure Times Meetup Details"

    type = object ({
        meetup    = string
        location = string
    })
    
    default = {
      meetup      = "azuretimesnext"
      location    = "westeurope"
    }

    

}

variable "rgname" {

    description = "Azure Resource Group Name"

    type = object ({
        name     = string
        location = string
    })
    
    default = {
      name     = "azuretimesnext"
      location = "westeurope"
    }
    


}

variable "disk" {

    description = "Azure Managed Disk Config"

    type = object ({
        name     = string
        disk_sku = string
        creation_option = string
        size = string
        location = string
    })
    default = {
       name            = "azuretimesnext"
       disk_sku        = "UltraSSD_LRS"
       creation_option = "Empty"
       size            = "100"
       location        = "westeurope"
    }

}