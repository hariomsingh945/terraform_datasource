resource "azurerm_sql_server" "example" {
    for_each = var.sqlserver
  name                         = each.value.name
  resource_group_name          = each.value.rg_name
  location                     = each.value.location
  version                      = "12.0"
  administrator_login          = each.value.admindb
  administrator_login_password = each.value.adminpass
  }