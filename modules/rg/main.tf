
# Create a resource group
resource "azurerm_resource_group" "example" {
  #resource "nameoftheapi" "refrencelable"
  #when you are creating a resource 
  name     = "${local.resource_name_prefix}-${var.resource_group_name}"
  ###sap-dev-rg-default
  location = var.resource_group_location
  tags = local.common_tags
}

locals {
  owners = var.business_devision
  environment = var.environment
  resource_name_prefix = "${var.business_devision}-${var.environment}"
  #sap-dev
  common_tags = {
    owners = local.owners #smile
    environment = local.environment #cry
  }
}