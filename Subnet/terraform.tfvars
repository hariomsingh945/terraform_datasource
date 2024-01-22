subnetname = {
  "subnet01" = {
    "name"             = "frontend01"
    "rg_name"          = "rg_group1"
    "vnet"             = "vnet_01-network"
    "address_prefixes" = ["10.2.1.0/24"]
  }
  "subnet02" = {
    "name"             = "backend01"
    "rg_name"          = "rg_group2"
    "vnet"             = "vnet_02-network"
    "address_prefixes" = ["10.2.2.0/24"]
  }
  "subnet03" = {
    "name"             = "AzureBastionSubnet"
    "rg_name"          = "rg_group3"
    "vnet"             = "vnet_03-network"
    "address_prefixes" = ["10.2.3.0/24"]
  }
}