variable "rgname" {

    description = "Azure Resource Group Name"

    type = object ({
        name     = string
        location = string
    })
    
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