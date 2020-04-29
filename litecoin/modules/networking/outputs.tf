output "description" {
    value = google_compute_network.vpc_network.description
}

output "firewall" {
    value = google_compute_firewall.default.id
}

output "subnetwork" {
    value = google_compute_subnetwork.network-with-private-secondary-ip-ranges.gateway_address
}

output "vpc_network" {
    value = google_compute_network.vpc_network
}

output "subnetwork_ip_ranges" {
  value = google_compute_subnetwork.network-with-private-secondary-ip-ranges
}