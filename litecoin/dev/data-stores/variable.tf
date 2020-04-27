variable "snapshot_policy_name" {
  type = string
  default = "coolbitx-policy-0423"
}

variable "zone" {
  type = string
  default = "asia-east1-b"
}

variable "project" {
  type = string
  default = "sandbox-272805"
}

variable "name" {
  type = string
  default = "experiment-0426"
}

variable boot_disk_size {
  description = "Boot Disk Size in GB"
  type = number
  default = 20
}

variable boot_disk_type {
  type = string
  default = "pd-ssd"
}
