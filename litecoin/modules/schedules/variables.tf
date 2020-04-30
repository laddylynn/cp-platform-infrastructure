
variable "snapshot_policy_name" {
  type = string
}

variable "region" {
  type = string
}

variable "zone" {
  type = string
}

variable "project" {
  type = string
}

variable "start_time" {
  type = string
}

variable "retention_policy" {
  type = object({
    max_retention_days    = number
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

variable "environment" {
  type = string
}





