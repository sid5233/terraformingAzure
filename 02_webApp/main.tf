resource "azurerm_resource_group" "tfRGwebAppRg" {
  name = var.resource_group_name
  location = var.resource_group_location
}

resource "azurerm_service_plan" "tfServicePlan" {
  name = var.azurerm_service_plan_name
  resource_group_name = azurerm_resource_group.tfRGwebAppRg.name
  location = azurerm_resource_group.tfRGwebAppRg.location
  os_type = "Linux"
  sku_name = "F1"
}

resource "azurerm_linux_web_app" "tfWebApp"{
  name = var.azurerm_linux_web_app_name
  resource_group_name = azurerm_resource_group.tfRGwebAppRg.name
  location = azurerm_resource_group.tfRGwebAppRg.location
  service_plan_id = azurerm_service_plan.tfServicePlan.id

  site_config {
    http2_enabled             = true
    always_on                 = false
    use_32_bit_worker = true
  }
}