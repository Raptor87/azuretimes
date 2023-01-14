variable "rgname" {

    description = "Azure Resource Group Name"

    type = object ({
        name = string
        location = string
    })
    
    default = {
        Name        = "Azure Times 55"
        location    = "westeurope"
    }

}