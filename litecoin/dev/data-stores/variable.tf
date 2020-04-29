resource "random_id" "disk_id" {
  byte_length = 4
}

variable "snapshot_policy_name" {
  type = string
  default = "coolbitx-policy-0423"
}

variable "region" {
  type = string
  default = "asia-east1"
}

variable "zone" {
  type = string
  default = "asia-east1-b"
}

variable "packer_image" {
  type = string
  default = "packer-experiment-1587777660"
}

variable "environment" {
  type = string
  default = "dev"
}

variable "project" {
  type = string
  default = "sandbox-272805"
}

variable "ledger_name" {
  type = string
  default = "level_db"
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
