resource "google_compute_disk" "default" {
  name  = var.name
  project = var.project
  type = var.boot_disk_type
  zone  = var.zone
  # size  = var.boot_disk_size
  image = "packer-experiment-1587777660"
  # snapshot = "electrumx-snapshot-98ea"
  labels = {
    environment = "dev"
  }
  physical_block_size_bytes = 4096
}