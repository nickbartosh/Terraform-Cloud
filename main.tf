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