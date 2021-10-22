terraform {
  required_providers {
    solidserver = {
      source = "EfficientIP-Labs/solidserver"
      version = "1.1.15"
    }
    azurerm = {
      source = "hashicorp/azurerm"
      version = "2.72.0"
    }
  }
}

provider "solidserver" {
  username  = "ipmadmin"
  password  = "admin"
  host      = "3.123.22.95"
  sslverify = false
}