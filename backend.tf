terraform {
  backend "azurerm" {
    resource_group_name  = "testrg"
    storage_account_name = "teststg24"
    container_name       = "testcontainer"
    key                  = "terraform.tfstate"
  }
}