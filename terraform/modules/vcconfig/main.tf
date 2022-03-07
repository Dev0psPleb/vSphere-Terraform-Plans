data "vsphere_datacenter" "dc" {
  name       = var.dc
  depends_on = [vsphere_datacenter.this]
}

resource "vsphere_datacenter" "this" {
  name = var.dc
}

resource "vsphere_compute_cluster" "this" {
  name                 = var.cluster_name
  datacenter_id        = data.vsphere_datacenter.dc.id
  drs_enabled          = var.drs_enabled
  drs_automation_level = var.drs_automation_level
  ha_enabled           = var.ha_enabled
}

resource "vsphere_folder" "infrafolder" {
  path          = var.infra_folder_path
  type          = "vm"
  datacenter_id = data.vsphere_datacenter.dc.id
}

resource "vsphere_folder" "templatefolder" {
  path          = var.template_folder_path
  type          = "vm"
  datacenter_id = data.vsphere_datacenter.dc.id
}

resource "vsphere_distributed_virtual_switch" "this" {
  name            = var.distributed_switch
  datacenter_id   = data.vsphere_datacenter.dc.id
  uplinks         = ["uplink1", "uplink2", "uplink3", "uplink4"]
  active_uplinks  = ["uplink1", "uplink2"]
  standby_uplinks = ["uplink3", "uplink4"]
}
