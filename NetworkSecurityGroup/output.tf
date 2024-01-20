output "securityid" {
  value = [
    for id in azurerm_network_security_group.security_example : id.id
  ]
}