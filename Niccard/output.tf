output "nicid" {
  value = [
    for id in azurerm_network_interface.example : id.id
  ]
}

# output "nicid1" {
#   value = [
#     for name in azurerm_network_interface.example : name.ip_configuration_name
#   ]
# }