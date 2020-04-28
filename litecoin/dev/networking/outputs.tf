output "subnetwork" {
  value = "${module.networking.description}"
}

output "firewall" {
  value = "${module.networking.firewall}"
}
