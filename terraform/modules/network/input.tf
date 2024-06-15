variable "resource_group_name" {
  description = "The name of the resource group in which to create the virtual machine."
  type        = string
  default = "endrias2024_rg_354888"
}

variable "subscription_id" {
  type        = string
  default = "74e2073f-57ce-4af8-8ea6-8ecc9e28d555"
}

variable "client_id" {
  type        = string
  default = "0db55e05-308d-4cb9-894b-928195cb749f"
}

variable "client_secret" {
  type        = string
  default = "f25e1309-a912-499f-9000-f297d5c791ff"
}

variable "tenant_id" {
  type        = string
  default = "907c341a-e1bc-44f4-a6f5-c11c86a3b671"
}

variable "location" {
  type        = string
  default = "East Us"
}

variable "application_type" {
  type        = string
  default = "endriasApplication"
}

variable "virtual_network_name" {
  type        = string
  default = "endriasnetwork"
}

variable "address_prefix_test" {
  type        = string
  default = "10.5.1.0/24"
}

variable "address_space" {
  description = "A list of network interface IDs to attach to the VM."
  type        = list(string)
  default     = ["10.5.0.0/16"]
}
