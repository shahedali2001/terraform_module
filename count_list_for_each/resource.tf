# resource "azurerm_resource_group" "tatasky-rg" {
#   name     = var.rg-name
#   location = var.rg-location
# }
# resource "azurerm_resource_group" "rg" {
#   for_each = (var.list-of-fruits)  
#   name = each.value
#   location = "West Europe"
# }
# resource "azurerm_resource_group" "rg1" {
#   name     = "rg-prod-ecom-002"
#   location = "West Europe"
# }

# resource "azurerm_resource_group" "rg2" {
#   name     = "rg-prod-ecom-002"
#   location = "West Europe"
# }

resource "azurerm_resource_group" "rg2" {
  for_each = toset(var.rg-name)
  name        = each.value
  location    = "east us"
}
