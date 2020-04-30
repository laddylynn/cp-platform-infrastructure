

module "experiment" {
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
  packer_image = var.packer_image
}



