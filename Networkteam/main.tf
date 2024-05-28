terraform {
  required_providers {
    azurerm = {
        source = "hashicorp/azurerm"
        version = "~> 3.1.0"
    }
  }
  required_version = ">= 1.1.0"
}
provider "azurerm" {
  features {
    
  }
}


data "azurerm_resource_group" "rg" {
  name = "dev-Homework2-rg"
}

module "publicip" {
  source  = "aflalahmad/publicip/azurerm"
  version = "0.0.1"
  publicip_name = "mypublicip"
  resourcegroup_name = data.azurerm_resource_group.rg.name
  location = "Westus"
  allocation_method = "Dynamic"
  tags = {
    Environment = "dev"
    Purpose = "homework"
  }
}