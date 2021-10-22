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

resource "solidserver_ip_space" "space_acmecorp" {
  name       = "AcmeCorp"
}

resource "solidserver_ip_space" "CorpOne" {
  name   = "CorpLifeOne"
}

resource "solidserver_ip_space" "corp_two" {
  name   = "CorpLifeTwo"
}

resource "solidserver_ip_subnet" "azure_internal_1" {
  space            = "${solidserver_ip_space.corp_two.name}"
  request_ip       = "10.100.100.0"
  prefix_size      = 16
  name             = "Azure Block"
  terminal         = false
}