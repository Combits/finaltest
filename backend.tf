terraform {
  required_version = ">=1.3.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=3.100.0"
    }
  }
  cloud {
    organization = "SandBox_Combits"
    workspaces {
      name = "Finaltest_p2"
    }
  }
}
provider "azurerm" {
  features {}
  skip_provider_registration = true
}
