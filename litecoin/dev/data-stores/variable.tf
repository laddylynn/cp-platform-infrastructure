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

variable "snapshot" {
  type = string
  default = "iwm5rki8u1x3"
}

variable "actor" {
  type = string
  default = "experiment"
}
