resource "azurerm_public_ip" "public_example" {
  for_each            = var.publicip
  name                = each.value.name
  location            = each.value.location
  resource_group_name = data.azurerm_resource_group.example1[each.key].name
  sku                 = "Standard"
  allocation_method   = each.value.allocation_type
}

data "azurerm_resource_group" "example1" {
  for_each = var.publicip
  name = each.value.rg_name
}
