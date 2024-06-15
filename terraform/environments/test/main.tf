provider "azurerm" {
  tenant_id       = "907c341a-e1bc-44f4-a6f5-c11c86a3b671"
  subscription_id = "74e2073f-57ce-4af8-8ea6-8ecc9e28d555"
  client_id       = "0db55e05-308d-4cb9-894b-928195cb749f"
  client_secret   = "4_W8Q~2qYIZ6y9r.SQPNA9PFebMdBUF7jnE-OcnX"
  features {}
}


terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.0"
    }
  }
  backend "azurerm" {
    resource_group_name   = var.resource_group_name
    storage_account_name  = var.storage_account_name
    container_name       = var.container_name
    key                   = var.key
    access_key           = "SIX4qMsGiDSN40qEZ+YFZm8MZB0EDmLLz3YGlQkgrG/u92UAJCLhgdqrvVK6qqAWrM6OASsFCeXZ+ASt4df8mw=="
  }
}

module "resource_group" {
  source               = "../../modules/resource_group"
  resource_group       = "${var.resource_group}"
  location             = "${var.location}"
}

module "network" {
  source               = "../../modules/network"
  address_space        = "${var.address_space}"
  location             = "${var.location}"
  virtual_network_name = "${var.virtual_network_name}"
  application_type     = "${var.application_type}"
  resource_type        = "NET"
  resource_group       = "${var.resource_group}"
  address_prefix_test  = "${var.address_prefix_test}"
}

module "nsg-test" {
  source           = "../../modules/networksecuritygroup"
  location         = "${var.location}"
  application_type = "${var.application_type}"
  resource_type    = "NSG"
  resource_group   = "${var.resource_group}"
  subnet_id        = "${module.network.subnet_id_test}"
  address_prefix_test = "${var.address_prefix_test}"
}
module "appservice" {
  source           = "../../modules/appservice"
  location         = "${var.location}"
  application_type = "${var.application_type}"
  resource_type    = "AppService"
  resource_group   = "${var.resource_group}"
}
module "publicip" {
  source           = "../../modules/publicip"
  location         = "${var.location}"
  application_type = "${var.application_type}"
  resource_type    = "publicip"
  resource_group   = "${var.resource_group}"
}
