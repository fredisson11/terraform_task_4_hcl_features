locals {
  nic_names = [for i in range(length(var.locations)) : "${var.prefix}-nic-${i}"]

  nsg_rules = [
    {
      name                   = "Allow_HTTP"
      priority               = 100
      direction              = "Inbound"
      access                 = "Allow"
      protocol               = "Tcp"
      source_port_range      = "*"
      destination_port_range = "80"
    },
    {
      name                   = "Allow_HTTPS"
      priority               = 101
      direction              = "Inbound"
      access                 = "Allow"
      protocol               = "Tcp"
      source_port_range      = "*"
      destination_port_range = "443"
    },
    {
      name                   = "Allow_SSH"
      priority               = 102
      direction              = "Inbound"
      access                 = "Allow"
      protocol               = "Tcp"
      source_port_range      = "*"
      destination_port_range = "22"
    }
  ]
}