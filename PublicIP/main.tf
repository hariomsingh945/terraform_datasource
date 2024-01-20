resource "azurerm_public_ip" "public_example" {
  for_each            = var.publicip
  name                = each.value.name
  location            = each.value.location
  resource_group_name = each.value.rg_name
  sku                 = "Standard"
  allocation_method   = each.value.allocation_type
}