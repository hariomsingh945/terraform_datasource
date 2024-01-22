resource "azurerm_bastion_host" "host_example" {
    for_each = var.bastionhost
  name                = each.value.name
  location            = each.value.location
  resource_group_name = data.azurerm_resource_group.example1[each.key].name

  ip_configuration {
    name                 = each.value.publicip_name
    subnet_id            = data.azurerm_subnet.example1[each.key].id
    public_ip_address_id = data.azurerm_public_ip.example1[each.key].id
  }
}