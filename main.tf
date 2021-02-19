#terraform remote state
terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
    }
  }
  backend "remote" {
    organization = "KATA-FRIDAYS"
    workspaces {
      name = "kata-friday-india-github-actions"
    }
  }
}
variable "CLIENT_ID" {
}
variable "CLIENT_SECRET" {
}
variable "SUBSCRIPTION_ID" {
}
variable "TENANT_ID" {
}

provider "azurerm" {
  client_id       = var.CLIENT_ID
  client_secret   = var.CLIENT_SECRET
  subscription_id = var.SUBSCRIPTION_ID
  tenant_id       = var.TENANT_ID
  features {}
}
