# Create all network interfaces required for this environment

# 8 Nics to be assigned to Management subnemycordavmst
resource "azurerm_network_interface" "mynics" {
  count = 1
  name                      = var.vmnics[count.index]
  location                  = var.resource_location
  resource_group_name       = azurerm_resource_group.myresourcegroup.name
 # depends_on = [azurerm_resource_group.myresourcegroup][azurerm_virtual_network.myvnet][azurerm_subnet.mysubnet5]
 depends_on = [
    azurerm_resource_group.myresourcegroup,
    azurerm_virtual_network.myvnet,
    azurerm_subnet.mysubnet5
 ]

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.mysubnet5.id
    private_ip_address_allocation = "dynamic"
    #public_ip_address_id          = azurerm_public_ip.mypips
    public_ip_address_id          = azurerm_public_ip.mypips.id
    }
}