resource "azurerm_resource_group" "tataplay" {
    count = 4
  name     = "zeetv${count.index}"
  location = "Central india"
}

# resource "azurerm_resource_group" "tataplay" {
#     count = 4
#   name     = var.azurerm_resource_group[count.index]
#   location = "Central india"
# }

# resource "azurerm_resource_group" "tataplay" {
#      count = length(var.azurerm_resource_group)
#   name     = var.azurerm_resource_group[count.index]
#    location = "Central india"
#  }