resource "vsphere_role" "this" {
  name            = var.vsphere_role_name
  role_privileges = var.role_privileges
}
