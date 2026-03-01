# Resource Group Variables
variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
  default     = "MyResourceGroup"
}

variable "location" {
  description = "Azure region for resources"
  type        = string
  default     = "East US"
}

# Virtual Network Variables
variable "vnet_name" {
  description = "Name of the virtual network"
  type        = string
  default     = "MyVNet"
}

variable "vnet_address_space" {
  description = "Address space for the virtual network"
  type        = string
  default     = "10.0.0.0/16"
}

variable "subnet_name" {
  description = "Name of the subnet"
  type        = string
  default     = "MySubnet"
}

variable "subnet_address_prefix" {
  description = "Address prefix for the subnet"
  type        = string
  default     = "10.0.0.0/24"
}

# Load Balancer Variables
variable "public_ip_name" {
  description = "Name of the public IP address"
  type        = string
  default     = "MyPublicIP"
}

variable "load_balancer_name" {
  description = "Name of the load balancer"
  type        = string
  default     = "MyLoadBalancer"
}

variable "frontend_ip_name" {
  description = "Name of the frontend IP configuration"
  type        = string
  default     = "MyFrontEndPool"
}

variable "backend_pool_name" {
  description = "Name of the backend pool"
  type        = string
  default     = "MyBackEndPool"
}

variable "health_probe_name" {
  description = "Name of the health probe"
  type        = string
  default     = "MyHealthProbe"
}

variable "lb_rule_name" {
  description = "Name of the load balancer rule"
  type        = string
  default     = "MyLoadBalancerRuleWeb"
}

# Network Security Group Variables
variable "nsg_name" {
  description = "Name of the network security group"
  type        = string
  default     = "MyNetworkSecurityGroup"
}

# Virtual Machine Scale Set Variables
variable "vmss_name" {
  description = "Name of the virtual machine scale set"
  type        = string
  default     = "MyVMSS"
}

variable "vm_sku" {
  description = "Size of the virtual machines"
  type        = string
  default     = "Standard_B1s"
}

variable "instance_count" {
  description = "Number of VM instances"
  type        = number
  default     = 2
}

variable "admin_username" {
  description = "Admin username for the VMs"
  type        = string
  default     = "azureuser"
}

variable "ssh_public_key" {
  description = "SSH public key for the VMs (leave empty to use ~/.ssh/id_rsa.pub)"
  type        = string
  default     = ""
}

# Tags
variable "tags" {
  description = "Tags to apply to all resources"
  type        = map(string)
  default = {
    Environment = "Development"
    Project     = "VMSS-LoadBalancer"
    Owner       = "DevOps"
  }
}