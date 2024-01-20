resource "azurerm_sql_database" "sqldb_example" {
  for_each            = var.sqldb
  name                = each.value.name
  resource_group_name = each.value.rg_name
  location            = each.value.location
  server_name         = each.value.server_name
}