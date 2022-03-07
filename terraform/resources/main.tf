provider "vsphere" {
  user                 = var.vsphere_user
  password             = var.vsphere_password
  vsphere_server       = var.vsphere_server
  allow_unverified_ssl = true
}

# vSphere builder Module

module "vcsa_build" {
  source                = "../modules/vcbuild"
  cidr_prefix           = var.cidr_prefix
  default_gateway_ip    = var.default_gateway_ip
  dns_servers           = var.dns_servers
  enable_ssh            = var.enable_ssh
  esxi_datastore        = var.esxi_datastore
  esxi_hostname         = var.esxi_hostname
  esxi_password         = var.esxi_password
  esxi_username         = var.esxi_username
  ip_address            = var.ip_address
  ip_configuration_mode = var.ip_configuration_mode
  ip_family             = var.ip_family
  sso_password          = var.sso_password
  vcsa_hostname         = var.vcsa_hostname
  vcsa_password         = var.vcsa_password
  vcsa_size             = var.vcsa_size
  vcsa_vm_name          = var.vcsa_vm_name
  vm_network            = var.vm_network
}

module "vcsa_config" {
  source             = "../modules/vcconfig"
  dc                 = var.dc
  distributed_switch = var.distributed_switch
  cluster_name       = var.cluster_name
  vcsa_password      = var.vcsa_password
  vcsa_hostname      = var.vcsa_hostname
}

# Custom Roles Modules

module "packer_role" {
  source            = "../modules/vsphere-role//roles/packer"
  vsphere_role_name = var.packer_role_name
  role_privileges   = var.packer_role_privileges
}
