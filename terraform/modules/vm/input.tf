variable "name" {
  description = "The name of the virtual machine."
  type        = string
  default = "endriasvm"
}

variable "location" {
  description = "The Azure region where the virtual machine will be created."
  type        = string
  default = "East Us"
}

variable "resource_group_name" {
  description = "The name of the resource group in which to create the virtual machine."
  type        = string
  default = "endrias2024_rg_3548"
}

variable "network_interface_ids" {
  description = "A list of network interface IDs to attach to the VM."
  type        = list(string)
  default     = []
}

variable "admin_username" {
  description = "The name of the administrative user to create on the VM."
  type        = string
  default = "wildd90"
}

