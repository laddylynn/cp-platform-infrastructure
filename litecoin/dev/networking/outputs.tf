output "vpc_network" {
  value = "${module.networking.vpc_network}"
}

output "firewall" {
  value = "${module.networking.firewall}"
}
