variable "client_id" {
  type    = string
  default = ""
}

variable "client_secret" {
  type    = string
  default = ""
}

variable "tenant_id" {
  type    = string
  default = ""
}

variable "subscription_id" {
  type    = string
  default = ""
}

variable "project_name" {
  type        = string
  description = "Globally used project name"
  default     = "aks-in-action"
}
 
variable "region" {
  type        = string
  description = "Azure Region that will be used"
  default     = "West US"
}
 
variable "cluster_version" {
  type        = string
  description = "The Kubernetes version for our clusters"
  default     = "1.21.2"
}