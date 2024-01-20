resource "azurerm_subnet" "subnet_example" {
  for_each             = var.subnetname
  name                 = each.value.name
  resource_group_name  = each.value.rg_name
  virtual_network_name = each.value.vnet
  address_prefixes     = each.value.address_prefixes
}