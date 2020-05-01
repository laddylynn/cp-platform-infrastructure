
 variable "snapshot_policy_name" {
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

variable "litecoin_ledger" {
  type = string
  default = ""
}

variable "litecoin_snapshot" {
  type = string
  default = "dev-litecoin-9369-asia-east1-b-20200430200528-mle1xklo"
}

variable "electrumx_ledger" {
  type = string
  default = "electrumx-dev-1588291326"
}

variable "electrumx_snapshot" {
  type = string
  default = ""
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
  default = 120
}

variable boot_disk_type {
  type = string
  default = "pd-ssd"
}

variable "ports" {
  type = list(string)
  default = ["22", "80", "8080", "3000-4000", "19332"]
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

variable "user" {
  default = "aaronchou"
}

variable "storage_locations" {
  type = list(string)
  default = ["asia-east1"]
}

variable "hours_in_cycle" {
  type = number
  default = 12
}

variable "electrumx_startup_script" {
  type = string
  default = "sudo systemctl start electrumx"
}

variable "litecoin_startup_script" {
  type = string
  default = ""
}

variable "network_ip" {
  type = list(string)
  default = ["10.2.0.2", "10.2.0.3"]
}

variable "machine_type" {
  type = string
  default = "n1-standard-2"
}


