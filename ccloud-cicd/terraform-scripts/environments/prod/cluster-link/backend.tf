
terraform {
  backend "azurerm" {
    storage_account_name = "abcd1234"
    container_name       = "terraform-state"
    key                  = "prod.dr.clusterlink.terraform.tfstate"
  }
}
