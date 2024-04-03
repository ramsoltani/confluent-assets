terraform {
  required_providers {
    confluent = {
      source  = "confluentinc/confluent"
      version = "1.68.0"
    }
  }
  backend "azurerm" {
    storage_account_name = "kenprodarmstausw2001"
    container_name       = "terraform-state"
    key                  = "prod.azure.clusterlink.dr.terraform.tfstate"
  }
}

provider "confluent" {
  cloud_api_key    = var.confluent_cloud_api_key
  cloud_api_secret = var.confluent_cloud_api_secret
}
