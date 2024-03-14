resource "azurerm_resource_group" "t_rg" {
  name     = "Terraform-RG"
  location = "westus2"

  tags = {
    Environment = "Dev"
  }
}