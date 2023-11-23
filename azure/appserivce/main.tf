variable "resource_group_name" {
  description = "The name of the resource group in which to create the App Service."
}

variable "location" {
  description = "The Azure region where the resource group and App Service should be created."
}

variable "app_service_name" {
  description = "The name of the App Service."
}

variable "app_service_plan_name" {
  description = "The name of the App Service Plan."
}

resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_app_service_plan" "asp" {
  name                = var.app_service_plan_name
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name

  sku {
    tier = "Basic"
    size = "B1"
  }
}

resource "azurerm_app_service" "as" {
  name                = var.app_service_name
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  app_service_plan_id = azurerm_app_service_plan.asp.id

  site_config {
    always_on        = true
    dotnet_version   = "v5.0"
    https_only       = true
    use_32_bit_worker_process = false
  }
}
