output "rg_name" {
  value = [ 
    for i in azurerm_resource_group.rg_example : i.name
   ]
    description = "resource group"
}

output "rg_id" {
  value = [ 
    for i in azurerm_resource_group.rg_example : i.id
   ]
}
output "rg_location" {
  value = [ 
    for i in azurerm_resource_group.rg_example : i.location
   ]
}