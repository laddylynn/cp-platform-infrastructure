# resource "google_compute_instance" "default" {
#   name         = "electrumx-instance-${random_id.instance_id.hex}"
#   machine_type = "n1-standard-2"

#   boot_disk {
#     # source = "electrumx-ledger-1"
#   }

#   metadata_startup_script = "sudo systemctl start electrumx"

#   network_interface {
#     network = "default"

#     access_config {
#       // Ephemeral IP
#     }
#   }

#   lifecycle {
#     ignore_changes = [attached_disk]
#   }
# }

# resource "google_compute_network" "vpc_network" {
#   name                    = "electrumx-network-${random_id.instance_id.hex}"
#   auto_create_subnetworks = "true"
# }

# resource "google_compute_firewall" "default" {
#   name    = "electrumx-firewall-${random_id.instance_id.hex}"
#   network = google_compute_network.vpc_network.self_link

#   allow {
#     protocol = "icmp"
#   }

#   allow {
#     protocol = "tcp"
#     ports    = ["22", "80", "8080", "1000-2000"]
#   }

#   source_ranges = ["0.0.0.0/0"]
#   target_tags   = ["externalssh"]
#   source_tags = ["web"]
# }

# provider "google" {
#   credentials = file("../../account.json") //must be execute in production environment
#   project     = "sandbox-272805"
#   region      = "asia-east1"
#   zone        = "asia-east1-a"
# }

# resource "google_compute_disk" "default" {
#   name  = "electrumx-ledger-1"
#   project = "sandbox-272805"
#   type = var.boot_disk_type
#   zone  = "asia-east1-a"
#   size  = var.boot_disk_size
#   snapshot = "iwm5rki8u1x3"
#   labels = {
#     environment = "dev"
#   }
#   physical_block_size_bytes = 4096
# }

# variable boot_disk_size {
#   description = "Boot Disk Size in GB"
#   default     = 150
# }

# variable boot_disk_type {
#   default = "pd-ssd"
# }


#--------------------

module "litecoin_w_electrumx" {
  source = "../../../modules/services"
  ports = var.ports
  environment = var.environment
  boot_disk_type = var.boot_disk_type
  region = var.region
  zone = var.zone
  snapshot_policy_name = var.snapshot_policy_name
  project = var.project
  terms = var.terms
  retention_policy = var.retention_policy
  label = var.label
  name = var.name
  boot_disk_size = var.boot_disk_size
  range_name = var.range_name
  hours_in_cycle = var.hours_in_cycle
  start_time = var.start_time
  storage_locations = var.storage_locations
  litecoin_ledger = var.litecoin_ledger
  electrumx_ledger = var.electrumx_ledger
  electrumx_startup_script = var.electrumx_startup_script
  litecoin_startup_script = "cd /home/${var.user}/litecoin/bin; sudo -u ${var.user} ./litecoind -daemon"
  network_ip = var.network_ip
  machine_type = var.machine_type
  litecoin_snapshot = var.litecoin_snapshot
  electrumx_snapshot = var.electrumx_snapshot
}


