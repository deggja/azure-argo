# Resource group for all resources
resource "azurerm_resource_group" "project" {
  name     = var.project_name
  location = var.region
}

module "network" {
  source  = "Azure/network/azurerm"
  version = "3.5.0"
 
  resource_group_name = azurerm_resource_group.project.name
  address_space       = "11.0.0.0/16"
  subnet_prefixes     = ["11.0.1.0/24"]
  subnet_names        = ["aks_subnet"]
 
  depends_on = [
    azurerm_resource_group.project
  ]
}

module "aks" {
  source  = "Azure/aks/azurerm"
  version = "4.13.0"
 
  kubernetes_version   = var.cluster_version
  orchestrator_version = var.cluster_version
  resource_group_name  = azurerm_resource_group.project.name
  prefix               = var.project_name
  agents_count         = 3
  vnet_subnet_id       = module.network.vnet_subnets[0]
  os_disk_size_gb      = 100
 
  # see https://www.terraform.io/docs/language/meta-arguments/depends_on.html
  depends_on = [
    module.network
  ]
}