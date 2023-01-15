variable "disk_name" {
  description = "The Name of the Azure Resource Group"
  type        = string
}

variable "disk_sku" {
  description = "The target disk SKU"
  type        = string
}

variable "disk_creation_option" {
  description = "The creation option"
  type        = string
  default = "Empty"
}

variable "disk_size" {
  description = "The drive size"
  type        = string
}