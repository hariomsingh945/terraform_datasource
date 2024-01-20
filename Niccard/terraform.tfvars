niccards = {
  "niccard1" = {
    "name"       = "frontvmnic01"
    "location"   = "westeurope"
    "rg_name"    = "rg_group1"
    "ipname"     = "internal"
    "subnetid"   = "/subscriptions/332d775e-6945-45da-a2ce-c0e14faa203f/resourceGroups/rg_group1/providers/Microsoft.Network/virtualNetworks/vnet_01-network/subnets/frontend01"
    "private_ip" = "Dynamic"
    "publicid" = "/subscriptions/332d775e-6945-45da-a2ce-c0e14faa203f/resourceGroups/rg_group1/providers/Microsoft.Network/publicIPAddresses/publicip_01"
  },

  "niccard3" = {
    "name"       = "frontvmnic03"
    "location"   = "westeurope"
    "rg_name"    = "rg_group1"
    "ipname"     = "internal2"
    "subnetid"   = "/subscriptions/332d775e-6945-45da-a2ce-c0e14faa203f/resourceGroups/rg_group1/providers/Microsoft.Network/virtualNetworks/vnet_01-network/subnets/frontend01"
    "private_ip" = "Dynamic"
    "publicid" = "/subscriptions/332d775e-6945-45da-a2ce-c0e14faa203f/resourceGroups/rg_group1/providers/Microsoft.Network/publicIPAddresses/frontendpublicip"
  },

  "niccard2" = {
    "name"       = "backendvmnic013"
    "location"   = "westeurope"
    "rg_name"    = "rg_group1"
    "ipname"     = "internal3"
    "subnetid"   = "/subscriptions/332d775e-6945-45da-a2ce-c0e14faa203f/resourceGroups/rg_group1/providers/Microsoft.Network/virtualNetworks/vnet_01-network/subnets/backend01"
    "private_ip" = "Dynamic"
    "publicid" = "/subscriptions/332d775e-6945-45da-a2ce-c0e14faa203f/resourceGroups/rg_group1/providers/Microsoft.Network/publicIPAddresses/frontendpublicip2"
  }
}

