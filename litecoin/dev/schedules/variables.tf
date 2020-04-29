
variable "policy_name" {
  type = string
  default = "litecoin-policy"
}

variable "region" {
  type = string
  default = "asia-east1"
}

variable "zone" {
  type = string
  default = "asia-east1-b"
}

variable "project" {
  type = string
  default = "sandbox-272805"
}

variable "start_time" {
  type = string
  default = "08:00"
}

variable "retention_policy" {
  type = object({
      max_retention_days = number
      on_source_disk_delete = string
  })
  default = {
      max_retention_days = 8
      on_source_disk_delete = "KEEP_AUTO_SNAPSHOTS"
  }
}

variable "label" {
  type = string
  default = "litecoin"
}

variable "storage_locations" {
  type = list(string)
  default = ["asia-east1"]
}

variable "hours_in_cycle" {
  type = number
  default = 1
}
