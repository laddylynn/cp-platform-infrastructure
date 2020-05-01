
 variable "snapshot_policy_name" {
  type = string
  default = "litecoin-snapshot-policy"
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
  default = "dev-litecoin-23bc-asia-east1-b-20200501080419-iz9vn4fz"
}

variable "electrumx_ledger" {
  type = string
  default = ""
}

variable "electrumx_snapshot" {
  type = string
  default = "dev-litecoin-037a-asia-east1-b-20200501080419-0tc5e4wi"
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

variable "user" {
  default = "aaronchou"
}

variable "storage_locations" {
  type = list(string)
  default = ["asia-east1"]
}

variable "electrumx_startup_script" {
  type = string
  default = "sudo systemctl start electrumx"
}

variable "litecoin_startup_script" {
  type = string
  default = ""
}

variable "machine_type" {
  type = string
  default = "n1-standard-2"
}


