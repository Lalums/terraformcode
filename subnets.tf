#Create Subnets
  resource "azurerm_subnet" "mysubnet1" {
  depends_on = ["azurerm_resource_group.myresourcegroup","azurerm_virtual_network.myvnet"]
  name = "mgmt"
  address_prefix = "10.1.1.0/24"
  resource_group_name = "${azurerm_resource_group.myresourcegroup.name}"
  virtual_network_name = "${azurerm_virtual_network.myvnet.name}"
  #network_security_group_id = "${azurerm_network_security_group.MYManagement-nsg.id}"
  }

  resource "azurerm_subnet" "mysubnet5" {
  depends_on = ["azurerm_resource_group.myresourcegroup","azurerm_virtual_network.myvnet"]
  name = "corda"
  address_prefix = "10.1.5.0/24"
  resource_group_name = "${azurerm_resource_group.myresourcegroup.name}"
  virtual_network_name = "${azurerm_virtual_network.myvnet.name}"
  #network_security_group_id = "${azurerm_network_security_group.MYCorda-nsg.id}"
  #service_endpoints    = ["Microsoft.Sql"]
  }
