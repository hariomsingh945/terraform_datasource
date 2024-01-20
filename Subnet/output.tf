output "subnetid" {
  value = [
    for id in azurerm_subnet.subnet_example : id.id
  ]

}