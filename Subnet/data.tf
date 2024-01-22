data "azurerm_resource_group" "rg_name" {
    for_each = var.subnetname
  name = each.value.rg_name
}


data "azurerm_virtual_network" "vnet1" {
    for_each = var.subnetname
  name                = each.value.vnet
  resource_group_name = data.azurerm_resource_group.rg_name[each.key].name
  depends_on = [ data.azurerm_resource_group.rg_name ]
}