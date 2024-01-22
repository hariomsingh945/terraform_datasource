data "azurerm_resource_group" "rg_name" {
    for_each = var.vnet_name
  name = each.value.rg_name
}

# output "id" {
#   value = data.azurerm_resource_group.example.id
# }