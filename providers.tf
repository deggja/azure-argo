terraform {
  required_version = ">=1.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
    }
    random = {
      source  = "hashicorp/random"
    }
  }
  cloud {
    organization = "home-lab-deggja"

    workspaces {
      name = "azure-argo"
    }
  }
}

provider "azurerm" {
  features {}
  client_id       = var.client_id
  tenant_id       = var.tenant_id
  client_secret   = var.client_secret
  subscription_id = var.subscription_id
}

provider "helm" {
  kubernetes {
    config_path = "~/.kube/config"
  }
}