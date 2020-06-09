# public ips to be assigned to nics in corda subnet
resource "azurerm_public_ip" "mypips" {
  
  name                         = "${var.prefix}-pip"
  location                     = var.resource_location
  resource_group_name          = azurerm_resource_group.myresourcegroup.name
  allocation_method            = "Dynamic"
}