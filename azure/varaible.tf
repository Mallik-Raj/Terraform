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

variable "teir" {
  description = "The Teir "
    default = "Basic"
}

variable "size" {
  description = "The size of App Service "
    
}
