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
  default     = "West Europe"
}
 
variable "cluster_version" {
  type        = string
  description = "The Kubernetes version for our clusters"
  default     = "1.23.8"
}

variable "customer" {
  type = object({
    long  = string
    short = string
  })
}

variable "location" {
  type = object({
    main  = string
    short = string
  })
}

variable "tags" {
  type        = map(string)
  description = "Tags used for the deployment."
  default = {
    "source"   = ""
    "solution" = ""
    "provider" = ""
  }
}