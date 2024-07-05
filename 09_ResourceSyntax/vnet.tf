#virtualnetwok
resource "azurerm_virtual_network" "myvnetbiz" {
  name = "myvnetbiz"
  address_space = [ "10.0.0.0/16" ]
  location = azurerm_resource_group.myrgbiz.location
  resource_group_name = azurerm_resource_group.myrgbiz.name

    tags = {
      name = "myvnet"
    }
}

#subnet
resource "azurerm_subnet" "mysubnetbiz" {
    name = "mysubnetbiz"
    resource_group_name = azurerm_resource_group.myrgbiz.name
    virtual_network_name = azurerm_virtual_network.myvnetbiz.name
    address_prefixes = [ "10.0.2.0/24" ]
}

#publicIP
resource "azurerm_public_ip" "mypublicip" {
  name = "mypublicip1"
  resource_group_name = azurerm_resource_group.myrgbiz.name
  location = azurerm_resource_group.myrgbiz.location
  allocation_method = "Static"
  tags = {
    environment = "Dev"
  }
}

#NIC
resource "azurerm_network_interface" "mynicbiz" {
  name = "mynicbiz"
  resource_group_name = azurerm_resource_group.myrgbiz.name
  location = azurerm_resource_group.myrgbiz.location
  ip_configuration {
    name = "internal"
    subnet_id = azurerm_subnet.mysubnetbiz.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id = azurerm_public_ip.mypublicip.id
  }

}