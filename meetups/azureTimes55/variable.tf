variable "rgname" {

    description = "Azure Resource Group Name"

    type = object ({
        name = string
        location = string
    })
    
    default = {
        name        = "azureTimes55"
        location    = "westeurope"
    }

}