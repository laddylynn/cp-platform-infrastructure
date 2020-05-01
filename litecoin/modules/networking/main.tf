resource "random_id" "instance_id" {
  byte_length = 2
}

resource "google_compute_subnetwork" "network-with-private-secondary-ip-ranges" {
  name = "${var.environment}-litecoin-network-${random_id.instance_id.hex}"
  ip_cidr_range = local.ip_cidr_range[0]
  region        = var.region
  network       = google_compute_network.vpc_network.self_link
  secondary_ip_range {
    range_name    = local.range_name
    ip_cidr_range = local.ip_cidr_range[1]
  }
}

resource "google_compute_network" "vpc_network" {
  name                    = "${var.environment}-litecoin-electrumx-network"
  auto_create_subnetworks = false
}

resource "google_compute_firewall" "default" {
  name    = "${var.environment}-litecoin-firewall-${random_id.instance_id.hex}"
  network = google_compute_network.vpc_network.self_link

  allow {
    protocol = local.network_protocols[0]
  }

  allow {
    protocol = local.network_protocols[1]
    ports    = local.ports
  }

  source_ranges = local.source_ranges

  source_tags = local.source_tags
}


locals {
  network_protocols = ["icmp", "tcp"]
  source_ranges = ["0.0.0.0/0"]
  ip_cidr_range = ["10.2.0.0/16", "192.168.10.0/24"]
  source_tags = ["web"]
  ports = ["22", "80", "8080", "3000-4000", "19332"]
  range_name = "tf-secondary-range"
}