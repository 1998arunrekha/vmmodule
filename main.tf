terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
}

module "ResourceGroup" {
    source = "./ResourceGroup"
    resourcegroupname ="productionrg1"
    location = "west us"

}

module "StorageAccount" {
    source = "./StorageAccount"
    storageaccountname = "productionstr6677"
    resourcegroup = "productionrg1"
    location  = "west us"
  
}

module "VirtualMachine" {
    source = "./VirtualMachine"
    newvm1 = "productionvm12"
    resourcegroup = "productionrg1"
    location = "west us"
 
}

module "VirtualNetwork" {
    source = "./VirtualNetwork"
    testvnet1 = "productionvnet2"
    location = "west us"
    resourcegroup ="productionrg1"
    subnet11 = "mysub11"

}

module "NetworkInterface" {
  source = "./NetworkInterface"
  nic1 = "networkinterface11"
  location = "west us"
  resourcegroup = "productionrg1"
}

