
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
  default = "litecoin-dev-1588491408"
}

variable "litecoin_snapshot" {
  type = string
  default = ""
}

variable "electrumx_ledger" {
  type = string
  default = "electrumx-dev-1588491394"
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

variable "user" {
  default = "coolbitx"
}

variable "storage_locations" {
  type = list(string)
  default = ["asia-east1"]
}

variable "electrumx_startup_script" {
  type = string
  default = "sudo systemctl start electrumx && sudo service google-fluentd start"
}

variable "litecoin_startup_script" {
  type = string
  default = "sudo service google-fluentd start"
}

variable "machine_type" {
  type = string
  default = "n1-standard-2"
}


