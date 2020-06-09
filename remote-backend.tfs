#Remote backend to store statefiles so that all contributors work on the same configuration without conflicts
terraform {
  backend "azurerm" {
    resource_group_name  = "storage"
    storage_account_name = "jpastorageacc9898"
    container_name       = "statefile"
    key                  = "statefile.terraform.tfstate"
    access_key           = "bYc3OJKNd70QP9mBWANvUfvS+AZqaKXYcN79jIJSNUjGUCDLJjcmcuB0Av7OktD5hEZb9fAfwnJTUBzf9FoKpQ=="
  }
}
