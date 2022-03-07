variable "create" {
  description = "Create the role. Available options: true or false"
  type        = bool
  default     = true
}

variable "vsphere_role_name" {
  description = "Name of the vSphere role to be created"
  type        = string
}

variable "role_privileges" {
  description = "A string list of permissions to attach to the vSphere role"
  type        = list(string)
  default = [
    "System.Anonymous",
    "System.Read",
    "System.View",
    "ContentLibrary.AddLibraryItem",
    "ContentLibrary.UpdateLibraryItem",
    "Datastore.AllocateSpace",
    "Datastore.Browse",
    "Datastore.FileManagement",
    "Network.Assign",
    "Resource.AssignVMToPool",
    "VApp.Export",
    "VirtualMachine.Config.AddNewDisk",
    "VirtualMachine.Config.AddRemoveDevice",
    "VirtualMachine.Config.AdvancedConfig",
    "VirtualMachine.Config.Annotation",
    "VirtualMachine.Config.CPUCount",
    "VirtualMachine.Config.Memory",
    "VirtualMachine.Config.Resource",
    "VirtualMachine.Config.Settings",
    "VirtualMachine.Interact.DeviceConnection",
    "VirtualMachine.Interact.PowerOff",
    "VirtualMachine.Interact.PowerOn",
    "VirtualMachine.Interact.PutUsbScanCodes",
    "VirtualMachine.Interact.SetCDMedia",
    "VirtualMachine.Interact.SetFloppyMedia",
    "VirtualMachine.Inventory.Create",
    "VirtualMachine.Inventory.CreateFromExisting",
    "VirtualMachine.Inventory.Delete",
    "VirtualMachine.Provisioning.CreateTemplateFromVM",
    "VirtualMachine.Provisioning.MarkAsTemplate",
    "VirtualMachine.Provisioning.MarkAsVM",
    "VirtualMachine.State.CreateSnapshot"
  ]
}
