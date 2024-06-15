resource "azurerm_virtual_network" "main" {
  name                = var.virtual_network_name
  resource_group_name = var.resource_group
  location            = var.location
  address_space       = var.address_space
  tags = {
    ResourceType = var.resource_type
  }
}

output "resource_type_output" {
  value = var.resource_type
}
