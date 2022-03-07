variable "vsphere_role_name" {
  description = "Name of the vSphere role to be created"
  type        = string
}

variable "role_privileges" {
  description = "A string list of permissions to attach to the vSphere role"
  type        = list(string)
}
