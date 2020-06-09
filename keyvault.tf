#Create 2 key vaults required for doorman application and corda with Standard and Premium tier

resource "azurerm_key_vault" "mykeyvault1" {
  count = 2
  name                      = var.keyvaultnames[count.index]
  location                  = var.resource_location
  resource_group_name       = azurerm_resource_group.myresourcegroup.name
  sku_name                  = "standard"
  tenant_id                 = var.tenant_id
}
