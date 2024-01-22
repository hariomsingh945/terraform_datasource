resource "azurerm_subnet" "subnet_example" {
  for_each             = var.subnetname
  name                 = each.value.name
  resource_group_name  = data.azurerm_resource_group.rg_name[each.key].name
  virtual_network_name = data.azurerm_virtual_network.vnet1[each.key].name
  address_prefixes     = each.value.address_prefixes
}