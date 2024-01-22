data "azurerm_resource_group" "example1" {
  for_each = var.niccards
  name     = each.value.rg_name
}

data "azurerm_subnet" "example1" {
  for_each             = var.niccards
  name                 = each.value.subnetid
  virtual_network_name = each.value.vnet
  resource_group_name  = data.azurerm_resource_group.example1[each.key].name
}

data "azurerm_public_ip" "example1" {
  for_each            = var.niccards
  name                = each.value.publicid
  resource_group_name = data.azurerm_resource_group.example1[each.key].name
}