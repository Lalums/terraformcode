resource "azurerm_storage_account" "jpastorage" {
  name                     = "${var.prefix}storage98"
  resource_group_name      = azurerm_resource_group.myresourcegroup.name
  location                 = var.resource_location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    environment = "uat"
  }
}