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

variable "name" {
  type = string
  default = "experiment"
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

variable "ports" {
  type = list(string)
  default = ["22", "80", "8080", "1000-2000"]
}

variable "range_name" {
  type = string
  default = "tf-test-secondary-range-update1"
}

variable "terms" {
  default = {
      network_protocols = ["icmp", "tcp"],
      source_ranges = ["0.0.0.0/0"],
      ip_cidr_range = ["10.2.0.0/16"],
  }
  description = "collect resource key terms in a object"
  type = map(list(string))
}

