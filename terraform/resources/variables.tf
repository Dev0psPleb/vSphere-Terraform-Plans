# vSphere variables
variable "vsphere_password" {
  description = "vSphere user password"
  type        = string
  sensitive   = true
}

variable "vsphere_server" {
  description = "vSphere Server hostname or IP address"
  type        = string
}

variable "vsphere_user" {
  description = "vSphere Username"
  type        = string
}

# Role variables
variable "packer_role_name" {
  description = "Name of the vSphere role to create"
  type        = string
}

variable "packer_role_privileges" {
  description = "Permissions to attach to the vSphere packer builder role"
  type        = list(any)
}

# VCSA Build variables
variable "cidr_prefix" {
  description = "CIDR prefix to use for VCSA IP configuration"
  type        = string
  default     = "24"
}

variable "dns_servers" {
  description = "DNS Servers to configure for VCSA to use"
  type        = string
}

variable "enable_ssh" {
  description = "Enable SSH on VCSA host. Boolean value, available options: true or false"
  type        = bool
  default     = true
}

variable "esxi_datastore" {
  description = "ESXi Datastore to provision VCSA Server"
  type        = string
}

variable "esxi_hostname" {
  description = "Hostname of the ESXi Server where VCSA will be deployed"
  type        = string
}

variable "esxi_password" {
  description = "ESXi Host password"
  type        = string
  sensitive   = true
}

variable "esxi_username" {
  description = "Username to use for the ESXI Host where VCSA will be deployed"
  type        = string
}

variable "default_gateway_ip" {
  description = "IP Address of the Default Gateway"
  type        = string
}

variable "ip_address" {
  description = "If static configuration is selected, the IP address for vcsa server"
  type        = string
}

variable "ip_configuration_mode" {
  description = "Set static IP or configure IP address with DHCP. Default option is 'static'"
  type        = string
  default     = "static"
}

variable "ip_family" {
  description = "IP Protocol version. Available options: ipv4, ipv6"
  type        = string
  default     = "ipv4"
}

variable "sso_password" {
  description = "Password to use for the SSO administrator user."
  type        = string
  sensitive   = true
}

variable "vcsa_hostname" {
  description = "Hostname to attach to the VCSA Server"
  type        = string
}

variable "vcsa_password" {
  description = "The root user password for the VCSA Server"
  type        = string
  sensitive   = true
}

variable "vcsa_disk_mode" {
  description = "Disk mode to provision for VCSA. Available options: true or false"
  type        = bool
  default     = true
}

variable "vcsa_size" {
  description = "Deployment size of the VCSA server"
  type        = string
  default     = "tiny"
}

variable "vm_network" {
  description = "VM Network to attach to VCSA Host"
  type        = string
}

variable "vcsa_vm_name" {
  description = "vCenter Server Appliance Virtual Machine Name"
  type        = string
  default     = "VMWare vCenter Server Appliance"
}

# VCSA config variables
variable "cluster_name" {
  description = "Compute cluster name"
  type        = string
}

variable "dc" {
  description = "vSphere Datacenter"
  type        = string
}

variable "distributed_switch" {
  description = "Distributed switch to create"
  type        = string
}

variable "drs_automation_level" {
  description = "Level of DRS automation to apply"
  type        = string
  default     = "fullAutomated"
}

variable "drs_enabled" {
  description = "Bool to enable DRS. Available options: true, false"
  type        = bool
  default     = false
}

variable "ha_enabled" {
  description = "Bool to enable HA in VCSA"
  type        = bool
  default     = true
}

variable "infra_folder_path" {
  description = "Path to the default infrastructure folder"
  type        = string
  default     = "Infrastructure"
}

variable "network_interfaces" {
  description = "Available network interfaces"
  type        = list(any)
  default = [
    "vmnic0",
    "vmnic1",
    "vmnic2",
    "vmnic3",
  ]
}

variable "template_folder_path" {
  description = "Path to the default templates folder"
  type        = string
  default     = "template_builds"
}
