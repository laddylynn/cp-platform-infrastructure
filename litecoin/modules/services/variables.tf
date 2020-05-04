
variable "snapshot_policy_name" {
  type = string
}

variable "region" {
  type = string
}

variable "zone" {
  type = string
}

variable "litecoin_ledger" {
  type = string
}

variable "electrumx_ledger" {
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

variable "machine_type" {
  type = string
}

variable "storage_locations" {
  type = list(string)
}

variable "electrumx_startup_script" {
  type = string
}

variable "litecoin_startup_script" {
  type = string
}

variable "litecoin_snapshot" {
  type = string
}

variable "electrumx_snapshot" {
  type = string
}

variable "namespace" {
  type = string
}

