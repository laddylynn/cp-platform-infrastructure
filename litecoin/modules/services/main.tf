module litecoin_ledger {
  source = "../data-stores"
  project = var.project
  boot_disk_type = var.boot_disk_type
  boot_disk_size = var.boot_disk_size
  zone = var.zone
  packer_image = var.litecoin_ledger
  environment = var.environment
  snapshot = var.litecoin_snapshot
}

module electrumx_ledger {
  source = "../data-stores"
  project = var.project
  boot_disk_type = var.boot_disk_type
  boot_disk_size = var.boot_disk_size
  zone = var.zone
  packer_image = var.electrumx_ledger
  environment = var.environment
  snapshot = var.electrumx_snapshot
}

module networking {
  source = "../networking"
  ports =  var.ports
  terms = {
      network_protocols = var.terms["network_protocols"],
      source_ranges = var.terms["source_ranges"],
      ip_cidr_range = var.terms["ip_cidr_range"]
  }
  range_name = var.range_name
  region = var.region
  environment = var.environment
}

module "snapshot_policy" {
  source = "../schedules"
  start_time = var.start_time
  storage_locations = var.storage_locations
  zone = var.zone
  region = var.region
  project = var.project
  retention_policy = var.retention_policy
  label = var.label
  hours_in_cycle = var.hours_in_cycle
  snapshot_policy_name = var.snapshot_policy_name 
  environment = var.environment
}

resource "google_compute_disk_resource_policy_attachment" "attachment1" {
  name = module.snapshot_policy.snapshot_policy_name
  disk = module.litecoin_ledger.ledger_name
  zone = var.zone
}

resource "google_compute_disk_resource_policy_attachment" "attachment2" {
  name = module.snapshot_policy.snapshot_policy_name
  disk = module.electrumx_ledger.ledger_name
  zone = var.zone
}

resource "google_compute_instance" "litecoin" {
  name         = "${var.environment}-litecoin-instance"
  machine_type = var.machine_type

  boot_disk {
    source = module.litecoin_ledger.self_link
  }

  service_account {
    scopes =["logging-write", "monitoring-write"]
  }

  metadata_startup_script = var.litecoin_startup_script

  network_interface {
    network = module.networking.vpc_network.self_link

    subnetwork = module.networking.subnetwork_ip_ranges.self_link

    network_ip = var.network_ip[0]

    access_config {
      # // Ephemeral IP
    }
  }

  lifecycle {
    ignore_changes = [attached_disk]
  }
}

resource "google_compute_instance" "electrumx" {
  name         = "${var.environment}-electrumx-instance"
  machine_type = var.machine_type

  boot_disk {
    source = module.electrumx_ledger.self_link
  }

  service_account {
    scopes =["logging-write", "monitoring-write"]
  }

  metadata_startup_script = var.electrumx_startup_script

  network_interface {
    network = module.networking.vpc_network.self_link

    subnetwork = module.networking.subnetwork_ip_ranges.self_link

    network_ip = var.network_ip[1]

    access_config {
      # // Ephemeral IP
    }
  }

  lifecycle {
    ignore_changes = [attached_disk]
  }
}



