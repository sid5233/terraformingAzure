resource "azurerm_resource_group" "tfRGwebAppRg" {
  name = "webAppRg"
  location = "centralindia"
}

resource "azurerm_service_plan" "tfServicePlan" {
  name = "tfazureWebApp"
  resource_group_name = azurerm_resource_group.tfRGwebAppRg.name
  location = azurerm_resource_group.tfRGwebAppRg.location
  os_type = "Linux"
  sku_name = "F1"
}

resource "azurerm_linux_web_app" "tfWebApp"{
  name = "tfazWebApp"
  resource_group_name = azurerm_resource_group.tfRGwebAppRg.name
  location = azurerm_resource_group.tfRGwebAppRg.location
  service_plan_id = azurerm_service_plan.tfServicePlan.id

  site_config {
    http2_enabled             = true
    always_on                 = false
    use_32_bit_worker = true
  }
}