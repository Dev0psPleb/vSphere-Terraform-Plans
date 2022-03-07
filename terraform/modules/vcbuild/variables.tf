variable "cidr_prefix" {
  description = "CIDR prefix to use for VCSA IP configuration"
  type        = string
  default     = ""
}

variable "dns_servers" {
  description = "DNS Servers to configure for VCSA to use"
  type        = string
  default     = ""
}

variable "enable_ssh" {
  description = "Enable SSH on VCSA host. Boolean value, available options: true or false"
  type        = bool
  default     = true
}

variable "esxi_datastore" {
  description = "ESXi Datastore to provision VCSA Server"
  type        = string
  default     = ""
}

variable "esxi_hostname" {
  description = "Hostname of the ESXi Server where VCSA will be deployed"
  type        = string
  default     = ""
}

variable "esxi_password" {
  description = "ESXi Host password"
  type        = string
  sensitive   = true
  default     = ""
}

variable "esxi_username" {
  description = "Username to use for the ESXI Host where VCSA will be deployed"
  type        = string
  default     = ""
}

variable "default_gateway_ip" {
  description = "IP Address of the Default Gateway"
  type        = string
  default     = ""
}

variable "ip_address" {
  description = "If static configuration is selected, the IP address for vcsa server"
  type        = string
  default     = ""
}

variable "ip_configuration_mode" {
  description = "Set static IP or configure IP address with DHCP. Default option is 'static'"
  type        = string
  default     = ""
}

variable "ip_family" {
  description = "IP Protocol version. Available options: ipv4, ipv6"
  type        = string
  default     = ""
}

variable "sso_password" {
  description = "Password to use for the SSO administrator user."
  type        = string
  sensitive   = true
  default     = ""
}

variable "vcsa_hostname" {
  description = "Hostname to attach to the VCSA Server"
  type        = string
  default     = ""
}

variable "vcsa_password" {
  description = "The root user password for the VCSA Server"
  type        = string
  sensitive   = true
  default     = ""
}

variable "vcsa_disk_mode" {
  description = "Disk mode to provision for VCSA. Available options: true or false"
  type        = bool
  default     = true
}

variable "vcsa_size" {
  description = "Deployment size of the VCSA server"
  type        = string
  default     = ""
}

variable "vm_network" {
  description = "VM Network to attach to VCSA Host"
  type        = string
  default     = ""
}

variable "vcsa_vm_name" {
  description = "vCenter Server Appliance Virtual Machine Name"
  type        = string
  default     = ""
}
