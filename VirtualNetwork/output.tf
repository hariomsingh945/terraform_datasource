output "virtualnetwork" {
    value = [
        for vnet in azurerm_virtual_network.vnet_example : vnet.id
    ]
  
}
