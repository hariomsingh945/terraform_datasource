data "azurerm_resource_group" "example1" {
  for_each = var.bastionhost
  name     = each.value.rg_name
}

data "azurerm_subnet" "example1" {
  for_each             = var.bastionhost
  name                 = each.value.subnetid
  virtual_network_name = "vnet_03-network"
  resource_group_name  = data.azurerm_resource_group.example1[each.key].name
}

data "azurerm_public_ip" "example1" {
  for_each            = var.bastionhost
  name                = each.value.publicip_id
  resource_group_name = data.azurerm_resource_group.example1[each.key].name
}