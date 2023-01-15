variable "name" {
  description = "The Name of the Azure Resource Group"
  type        = string
}

variable "location" {
  description = "The Target Azure Region"
  type        = string
}

variable "tags" {
  description = "The Azure Tags for the RG"
  type        = map(string)
  default     = {}
}
