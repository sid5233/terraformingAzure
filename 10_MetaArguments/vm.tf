resource "azurerm_linux_virtual_machine" "tfvm" {
  name = "mytfvm"
  computer_name = "mytfcomputername"
  resource_group_name = azurerm_resource_group.myrg.name
  location = azurerm_resource_group.myrg.location
  size = "Standard_DS1_v2"
  admin_username = "azureuser"
  network_interface_ids = [ azurerm_network_interface.tfnic.id ]
  admin_ssh_key {
    username = "azureuser"
    public_key = file("${path.module}/ssh-keys/terraform-azure.pub")
  }
    os_disk {
      name = "tfosdisk"
      caching = "ReadWrite"
      storage_account_type = "Standard_LRS"
    }
    source_image_reference {
      publisher = "RedHat"
      offer = "RHEL"
      sku = "83-gen2"
      version = "latest"
    }
    custom_data = filebase64("${path.module}/appscript/appcoudinit.txt")
}