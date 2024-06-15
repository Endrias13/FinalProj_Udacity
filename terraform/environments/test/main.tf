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
    storage_account_name = "finalprojstore"
    container_name       = "finalprojcontain"
    key                  = "GTik58kbEF9mJjhCTRxEz52B/ADVlLwtVYDJp3+X4x2bFeoOd4VM9Fw3XambggLm6nVvtfjQLP5q+AStgXOc/g=="
    access_key           = "GTik58kbEF9mJjhCTRxEz52B/ADVlLwtVYDJp3+X4x2bFeoOd4VM9Fw3XambggLm6nVvtfjQLP5q+AStgXOc/g=="
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
  resource_group       = "${module.resource_group.resource_group_name}"
  address_prefix_test  = "${var.address_prefix_test}"
}

module "nsg-test" {
  source           = "../../modules/networksecuritygroup"
  location         = "${var.location}"
  application_type = "${var.application_type}"
  resource_type    = "NSG"
  resource_group   = "${module.resource_group.resource_group_name}"
  subnet_id        = "${module.network.subnet_id_test}"
  address_prefix_test = "${var.address_prefix_test}"
}
module "appservice" {
  source           = "../../modules/appservice"
  location         = "${var.location}"
  application_type = "${var.application_type}"
  resource_type    = "AppService"
  resource_group   = "${module.resource_group.resource_group_name}"
}
module "publicip" {
  source           = "../../modules/publicip"
  location         = "${var.location}"
  application_type = "${var.application_type}"
  resource_type    = "publicip"
  resource_group   = "${module.resource_group.resource_group_name}"
}
