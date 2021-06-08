terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "2.62.0"
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

