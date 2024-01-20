resource "azurerm_virtual_network" "vnet_example" {
  for_each            = var.vnet_name
  name                = "${each.value.name}-network"
  location            = each.value.location
  resource_group_name = each.value.rg_name
  address_space       = each.value.address_space1
}