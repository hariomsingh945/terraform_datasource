output "publicip" {
  value = [
    for ip in azurerm_public_ip.public_example : ip.ip_address
  ]
}
output "publicip1" {
  value = [
    for id in azurerm_public_ip.public_example : id.id
  ]
}