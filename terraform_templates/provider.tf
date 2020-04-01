provider "azurerm" {
  subscription_id = "${var.subscription_id}"
  client_id       = "${var.client_id}"
  client_secret   = "${var.client_secret}"
  tenant_id       = "${var.tenant_id}"
  features{}
}

provider "azuread" {
  subscription_id = "${var.subscription_id}"
  client_id       = "${var.client_id}"
  client_secret   = "${var.client_secret}"
  tenant_id       = "${var.tenant_id}"
}

terraform {
  backend "azurerm" {
    storage_account_name = "sa5d38"
    container_name       = "terraform"
    key                  = "terraform.tfstate"
    access_key           = "bXCrGBgXvHbz27bjOy8YpsQdhfskFdb0LEn+PdkbIm93wchOi07130DvwXJHg3peu4Ll6RE1s6FV7cOWm4aZMA=="
  }
}