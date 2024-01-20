resource "azurerm_network_interface" "example" {
  for_each            = var.niccards
  name                = each.value.name
  location            = each.value.location
  resource_group_name = each.value.rg_name

  ip_configuration {
    name                          = each.value.ipname
    subnet_id                     = each.value.subnetid
    private_ip_address_allocation = each.value.private_ip
    public_ip_address_id          = each.value.publicid
  }
}
