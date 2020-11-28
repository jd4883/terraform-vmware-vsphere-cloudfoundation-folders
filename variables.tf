variable custom_attributes {default = {}}
variable dc_id {type = string}

variable vm_folders {
  type    = list(string)
  default = []
}

variable host_folders {
  type    = list(string)
  default = []
}

variable network_folders {
  type    = list(string)
  default = []
}

variable datacenter_folders {
  type    = list(string)
  default = []
}

variable datastore_folders {
  type    = list(string)
  default = []
}

variable tags {
  type = list(string)
  default = []
}
