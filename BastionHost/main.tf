resource "azurerm_bastion_host" "host_example" {
    for_each = var.bastionhost
  name                = each.value.name
  location            = each.value.location
  resource_group_name = each.value.rg_name

  ip_configuration {
    name                 = each.value.publicip_name
    subnet_id            = each.value.subnetid
    public_ip_address_id = each.value.publicip_id
  }
}