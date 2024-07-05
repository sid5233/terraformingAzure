resource "azurerm_virtual_network" "tfvnet" {
  name = "mytfvnet-1"
  address_space = ["10.0.0.0/16"]
  location = azurerm_resource_group.myrg.location
  resource_group_name = azurerm_resource_group.myrg.name
}

resource "azurerm_subnet" "tfsubnet" {
  name = "mytfsubnet-1"
  resource_group_name = azurerm_resource_group.myrg.name
  virtual_network_name = azurerm_virtual_network.tfvnet.name
  address_prefixes = ["10.0.2.0/24"]
}

resource "azurerm_public_ip" "tfpublicip" {
  name = "mypublicip"
  resource_group_name = azurerm_resource_group.myrg.name
  location = azurerm_resource_group.myrg.location
  allocation_method = "Static"
  domain_name_label = "app2-vm-${random_string.randomstring.id}"

  tags = {
    Env = "DEV"
  }
}

resource "azurerm_network_interface" "tfnic" {
  name = "tfvmnic"
  location = azurerm_resource_group.myrg.location
  resource_group_name = azurerm_resource_group.myrg.name
  ip_configuration {
    name = "internal"
    subnet_id = azurerm_subnet.tfsubnet.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id = azurerm_public_ip.tfpublicip.id
  }
}