terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "2.59.0"
    }
  }
}

provider "azurerm" {
  # Configuration options
  features {}
}

resource "azurerm_resource_group" "k8s" {
  name     = "${var.prefix}-rg"
  location = var.location
  tags = {
    CostCenter = var.CostCenter
    Environment = var.Environment
    DeployMode = "Terraform"
  }

}

data "template_file" "key_data" {
  template = file(var.pubkeypath)
}