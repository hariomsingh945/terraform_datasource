resource "azurerm_network_interface" "example" {
  for_each            = var.niccards
  name                = each.value.name
  location            = each.value.location
  resource_group_name = data.azurerm_resource_group.example1[each.key].name

  ip_configuration {
    name                          = each.value.ipname
    subnet_id                     = data.azurerm_subnet.example1[each.key].id
    private_ip_address_allocation = each.value.private_ip
    public_ip_address_id          = data.azurerm_public_ip.example1[each.key].id
  }
}
