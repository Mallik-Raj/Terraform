module "my_app_service" {
  source = _service_module"

  resource_group_name = "myResourceGroup"
  location            = "East US"
  app_service_name    = "myAppService"
  app_service_plan_name = "myAppServicePlan"
}
