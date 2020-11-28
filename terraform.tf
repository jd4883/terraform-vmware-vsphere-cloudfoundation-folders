resource vsphere_folder vm {
  count = length(var.vm_folders)
  custom_attributes = var.custom_attributes
  datacenter_id = var.dc_id
  path = var.vm_folders[count.index]
  tags = var.tags
  type = "vm"
}

resource vsphere_folder host {
  count = length(var.host_folders)
  custom_attributes = var.custom_attributes
  datacenter_id = var.dc_id
  path = var.host_folders[count.index]
  tags = var.tags
  type = "host"
}

resource vsphere_folder network {
  count = length(var.network_folders)
  custom_attributes = var.custom_attributes
  datacenter_id = var.dc_id
  path = var.network_folders[count.index]
  tags = var.tags
  type = "network"
}

resource vsphere_folder datacenter {
  count = length(var.datacenter_folders)
  custom_attributes = var.custom_attributes
  datacenter_id = var.dc_id
  path = var.datacenter_folders[count.index]
  tags = var.tags
  type = "datacenter"
}

resource vsphere_folder datastore {
  count = length(var.datastore_folders)
  custom_attributes = var.custom_attributes
  datacenter_id = var.dc_id
  path = var.datastore_folders[count.index]
  tags = var.tags
  type = "datastore"
}
