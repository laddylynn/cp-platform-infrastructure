
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

variable "storage_locations" {
  type = list(string)
  default = ["asia-east1"]
}

variable "environment" {
  type = string
  default = "dev"
}
