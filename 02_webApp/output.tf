output "webapp_url" {
  value = azurerm_linux_web_app.tfWebApp.default_hostname
}

output "webapp_ip_add" {
  value = azurerm_linux_web_app.tfWebApp.outbound_ip_address_list
}