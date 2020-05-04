
resource "random_id" "disk_id" {
  byte_length = 2
}

resource "google_compute_disk" "default" {
  name  = "${var.environment}-${var.actor}-${random_id.disk_id.hex}"
  project = var.project
  type = local.boot_disk_type
  zone  = var.zone
  image = var.packer_image
  labels = {
    environment = var.environment
  }
  physical_block_size_bytes = local.physical_block_size_bytes
  snapshot = var.snapshot
}

locals {
  boot_disk_type = "pd-ssd"
  physical_block_size_bytes = 4096
}