# Create a resource group
resource "azurerm_resource_group" "myresourcegroup" {
  name     = var.resource_group
  location = var.resource_location
}

# Create virtual network
resource "azurerm_virtual_network" "myvnet" {
  depends_on = [azurerm_resource_group.myresourcegroup]
  name                = var.vnetname
  address_space       = ["10.1.0.0/16"]
  location            = var.resource_location
  resource_group_name = var.resource_group

}
