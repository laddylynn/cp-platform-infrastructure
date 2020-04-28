module ledger {
    source = "../../../modules/data-stores"
    name = var.name
    project = var.project
    boot_disk_type = var.boot_disk_type
    boot_disk_size = var.boot_disk_size
    zone = var.zone
    packer_image = var.packer_image
    environment = var.environment
}

module networking {
    source = "../../../modules/networking"
    ports =  var.ports
    terms = {
        network_protocols = var.terms["network_protocols"],
        source_ranges = var.terms["source_ranges"],
        ip_cidr_range = var.terms["ip_cidr_range"]
    }
    range_name = var.range_name
    region = var.region
}

resource "google_compute_instance" "vm1" {
  name         = "experiment-instance-1"
  machine_type = "f1-micro"

  boot_disk {
    source = module.ledger.self_link
  }

  service_account {
    scopes =["logging-write", "monitoring-write"]
  }

  network_interface {
    network = module.networking.vpc_network.self_link

    subnetwork = module.networking.subnetwork_ip_ranges.self_link

    access_config {
      # // Ephemeral IP
    }
  }
}


