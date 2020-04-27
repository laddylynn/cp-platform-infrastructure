
variable "name" {
  type = string
}

variable "zone" {
  type = string
}

variable "project" {
  type = string
}

variable boot_disk_size {
  description = "Boot Disk Size in GB"
  type = number
}

variable boot_disk_type {
  type = string
}
