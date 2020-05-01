
variable "snapshot_policy_name" {
  type = string
}

variable "region" {
  type = string
}

variable "zone" {
  type = string
}

variable "packer_image" {
  type = string
}

variable "environment" {
  type = string
}

variable "project" {
  type = string
}

variable "name" {
  type = string
}

variable boot_disk_size {
  description = "Boot Disk Size in GB"
  type = number
}

variable boot_disk_type {
  type = string
}

variable "ports" {
  type = list(string)
}

variable "network_ip" {
  type = list(string)
}

variable "machine_type" {
  type = string
}

variable "range_name" {
  type = string
}

variable "terms" {
  description = "collect resource key terms in a object"
  type = map(list(string))
}

variable "start_time" {
  type = string
}

variable "retention_policy" {
  type = object({
      max_retention_days = number
      on_source_disk_delete = string
  })
}

variable "label" {
  type = string
}

variable "storage_locations" {
  type = list(string)
}

variable "hours_in_cycle" {
  type = number
}

variable "metadata_startup_script" {
  type = string
}

variable "snapshot" {
  type = string
}


