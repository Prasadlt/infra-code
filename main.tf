resource "azurerm_resource_group" "rg" {
  name     = "Terraform-RG"
  location = "westus2"

  tags = {
    Environment = "Dev"
  }
}

resource "azurerm_service_plan" "asp" {
  name                = "test-sp"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  os_type             = "Linux"
  sku_name            = "B1"
}

resource "azurerm_linux_web_app" "linux_webapp" {
    name                = "testpd12"
    location            = azurerm_resource_group.rg.location
    resource_group_name = azurerm_resource_group.rg.name
    service_plan_id = azurerm_service_plan.asp.id
    public_network_access_enabled = true

    site_config {
        application_stack {
            docker_image_name   = "nginx:latest"
            docker_registry_url = var.reg_url
            docker_registry_username = var.reg_user
            docker_registry_password = var.reg_pwd
        }
    }
    app_settings = {
        WEBSITES_ENABLE_APP_SERVICE_STORAGE = "false"
        WEBSITE_PORT = 3000
    }
    
}