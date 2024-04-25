resource "azurerm_resource_group" "rg" {
  name     = "rg_terraform_sandbox"
  location = "westeurope"
}
module "cmbtstst" {
  source               = "app.terraform.io/SandBox_Combits/cmbtstst/azurerm"
  version              = "1.0.1"
  environment          = "Production"
  location             = azurerm_resource_group.rg.location
  owner                = "TDB"
  resource_group_name  = azurerm_resource_group.rg.name
  storage_account_name = "stgcmbtstftest977"
}

