
variable "resource_group_name" {
    #the name of the varaible can be anything but when you define varaible the block should start with varabile
  description = "This contains resource group name"
  type = string #listofstring(array) map numeric
  #default = "rg-default"
}

variable "resource_group_location" {
  description = "Resource Group Name"
  type = string 
  #default = "eastus2"
}

variable "business_devision" {
  type = string
  #default = "sap"
}

variable "environment" {
  type = string 
  #default = "dev"
}

#i want my resource group name will be a meaningfull name
#rg-default-sap-dev 