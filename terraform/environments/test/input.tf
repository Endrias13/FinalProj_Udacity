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

variable "key" {
  description = "The name of the state file"
  type        = string
  default     = "terraform.tfstate"
}

variable "store_key" {
  description = "my_key"
  type        = string
  default     = "SIX4qMsGiDSN40qEZ+YFZm8MZB0EDmLLz3YGlQkgrG/u92UAJCLhgdqrvVK6qqAWrM6OASsFCeXZ+ASt4df8mw=="
}

variable "tenant_id" {
  type        = string
  default = "907c341a-e1bc-44f4-a6f5-c11c86a3b671"
}

variable "location" {
  type        = string
  default = "East Us"
}

variable "resource_group" {
  type        = string
  default = "endrias2024_rg_354888"
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
  type        = list(string)
  default =  ["10.0.1.0/24"]
}

variable "address_space" {
  description = "A list of network interface IDs to attach to the VM."
  type        = list(string)
  default     = ["10.5.0.0/16"]
}

variable "storage_account_name" {
  description = "The name of the storage account"
  type        = string
}

variable "backend_key" {
  description = "The key for the Terraform state file"
  type        = string
  default     = "test.terraform.tfstate"
}


variable "container_name" {
  description = "The name of the blob container"
  type        = string
}

