variable "resource_group_name" {
  type = string
  description = "Name of the resource group"
}
variable "resource_group_location" {
  type = string
  description = "Name of the resource group location"
}
variable "azurerm_service_plan_name" {
  type = string
  description = "Name of the app service plan"
}
variable "azurerm_linux_web_app_name" {
  type = string
  description = "Name of the web app"
}
