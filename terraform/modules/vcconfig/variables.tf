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
  default     = "fullyAutomated"
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

variable "vcsa_password" {
  description = "The root user password for the VCSA Server"
  type        = string
  sensitive   = true
}

variable "vcsa_hostname" {
  description = "Hostname of the VCSA Server"
  type        = string
}
