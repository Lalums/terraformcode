variable "resource_group" {
  type = string
  description = "Name of the Azure Resource Group"
  default = "jpanew"
}

variable "resource_location" {
  type = string
  description = "Location of the Azure Resources"
  default = "eastus"
}

variable "vnetname" {
  default = "jpa-vnet"
}
##### Define variables for VM Username #####  
variable "vmuser" {
  default = "bcadmin"
}

variable "vmpassword" {
  default = "1ON5YFbu6o%z"
}

variable "prefix" {
  default = "jpa"
}

variable "keyvaultnames" {
    type    = list
    default = ["jpakv1", "jpakv2", "jpakv3"]
}

variable "vmnics" {
    type    = list
    default = ["jpanic1", "jpanic2", "jpanic3"]
}

