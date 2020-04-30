resource "random_id" "instance_id" {
  byte_length = 2
}

resource "google_compute_subnetwork" "network-with-private-secondary-ip-ranges" {
  name = "${var.environment}-litecoin-network-${random_id.instance_id.hex}"
  ip_cidr_range = var.terms["ip_cidr_range"][0]
  region        = var.region
  network       = google_compute_network.vpc_network.self_link
  secondary_ip_range {
    range_name    = var.range_name
    ip_cidr_range = "192.168.10.0/24"
  }
}

resource "google_compute_network" "vpc_network" {
  name                    = "${var.environment}-litecoin-network"
  auto_create_subnetworks = false
}

resource "google_compute_firewall" "default" {
  name    = "${var.environment}-litecoin-firewall-${random_id.instance_id.hex}"
  network = google_compute_network.vpc_network.self_link

  allow {
    protocol = var.terms["network_protocols"][0]
  }

  allow {
    protocol = var.terms["network_protocols"][1]
    ports    = var.ports
  }

  source_ranges = var.terms["source_ranges"]

  source_tags = ["web"]
}