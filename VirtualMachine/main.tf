resource "azurerm_linux_virtual_machine" "vm_example" {
  for_each                        = var.linuxvm
  name                            = each.value.name
  resource_group_name             = each.value.rg_name
  location                        = each.value.location
  size                            = each.value.size
  admin_username                  = data.azurerm_key_vault_secret.username.value
  admin_password                  = data.azurerm_key_vault_secret.password.value
  disable_password_authentication = false
  computer_name = each.value.computer_name
  network_interface_ids           = each.value.network_interface_ids
      
  #admin_ssh_key {
  #  username   = "adminuser"
  # public_key = file("~/.ssh/id_rsa.pub")
  #}

  os_disk {
    caching              = each.value.caching
    storage_account_type = each.value.storage_account_type
  }

  source_image_reference {
    publisher = each.value.publicer
    offer     = each.value.offer
    sku       = each.value.sku
    version   = each.value.version
  }
}