niccards = {
  "niccard1" = {
    "name"       = "frontvmnic01"
    "location"   = "westeurope"
    "rg_name"    = "rg_group1"
    "vnet"       = "vnet_01-network"
    "ipname"     = "internal"
    "subnetid"   = "frontend01"
    "private_ip" = "Dynamic"
    "publicid"   = "publicip_01"
  },

  "niccard3" = {
    "name"       = "frontvmnic03"
    "location"   = "westeurope"
    "rg_name"    = "rg_group3"
    "vnet"       = "vnet_03-network"
    "ipname"     = "internal2"
    "subnetid"   = "AzureBastionSubnet"
    "private_ip" = "Dynamic"
    "publicid"   = "frontendpublicip2"
  },

  "niccard2" = {
    "name"       = "backendvmnic013"
    "location"   = "westeurope"
    "rg_name"    = "rg_group2"
    "vnet"       = "vnet_02-network"
    "ipname"     = "internal3"
    "subnetid"   = "backend01"
    "private_ip" = "Dynamic"
    "publicid"   = "frontendpublicip"
  }
}

