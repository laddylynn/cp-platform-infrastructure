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

variable "ports" {
  type = list(string)
  default = ["22", "80", "8080", "1000-2000"]
}

variable "range_name" {
  type = string
  default = "tf-test-secondary-range-update1"
}

variable "environment" {
  type = string
  default = "dev"
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


