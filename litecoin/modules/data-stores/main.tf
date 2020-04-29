resource "random_id" "disk_id" {
  byte_length = 2
}

resource "google_compute_disk" "default" {
  name  = "${var.environment}-litecoin-${random_id.disk_id.hex}"
  project = var.project
  type = var.boot_disk_type
  zone  = var.zone
  image = var.packer_image
  labels = {
    environment = var.environment
  }
  physical_block_size_bytes = 4096
}