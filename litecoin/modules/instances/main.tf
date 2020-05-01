
module ledger {
  source = "../data-stores"
  project = var.project
  boot_disk_type = var.boot_disk_type
  boot_disk_size = var.boot_disk_size
  zone = var.zone
  packer_image = var.packer_image
  environment = var.environment
  snapshot = var.snapshot
}

resource "google_compute_instance" "vm" {
  name         = "${var.environment}-experiment-instance"
  machine_type = var.machine_type

  boot_disk {
    source = module.ledger.self_link
  }

  service_account {
    scopes =["logging-write", "monitoring-write"]
  }

#   metadata_startup_script = var.metadata_startup_script

  network_interface {
      network = ""
  }

#   network_interface {
#     network = module.networking.vpc_network.self_link

#     subnetwork = module.networking.subnetwork_ip_ranges.self_link

#     network_ip = var.network_ip[0]

#     access_config {
#       # // Ephemeral IP
#     }
#   }

  lifecycle {
    ignore_changes = [attached_disk]
  }
}