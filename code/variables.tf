variable "subscription" {}

variable "aro_vnet_resource_group_name" {
  description = "Name of resource group to deploy ARO VNET/Subnets in."
}

variable "aro_location" {
  description = "The ARO location where all resources should be created"
}

variable "tags" {
  description = "Tags to apply to all resources created."
  type        = map(string)
  default = {
    Environment = "Production"
  }
}


