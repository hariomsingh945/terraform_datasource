data "azurerm_key_vault" "keyvault" {
  name                = "vaultlocker"
  resource_group_name = "Key_RG"
}

data "azurerm_key_vault_secret" "username" {
  name         = "username"
  key_vault_id = data.azurerm_key_vault.keyvault.id
}

data "azurerm_key_vault_secret" "password" {
  name         = "password"
  key_vault_id = data.azurerm_key_vault.keyvault.id
}

data "azurerm_network_interface" "example" {
  name                = "frontvmnic01"
  resource_group_name = "rg_group1"
}