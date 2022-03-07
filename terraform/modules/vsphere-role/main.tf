provider "vsphere" {
  user                 = var.vsphere_user
  password             = var.vsphere_password
  vsphere_server       = var.vsphere_server
  allow_unverified_ssl = true
}

resource "vsphere_role" "this" {
  name            = var.vsphere_role_name
  role_privileges = var.role_privileges
}
