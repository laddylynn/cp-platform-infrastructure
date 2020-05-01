resource "random_id" "instance_id" {
  byte_length = 2
}

module "snapshot_policy" {
  source = "../../modules/schedules"
  storage_locations = var.storage_locations
  zone = var.zone
  region = var.region
  project = var.project
  environment = var.environment
}


