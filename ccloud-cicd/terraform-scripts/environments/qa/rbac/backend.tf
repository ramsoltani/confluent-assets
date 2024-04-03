
terraform {
  backend "azurerm" {
    storage_account_name = "abcd1234"
    container_name       = "terraform-state"
    key                  = "qa.rbacs.terraform.tfstate"
  }
}
