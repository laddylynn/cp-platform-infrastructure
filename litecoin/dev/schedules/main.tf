resource "random_id" "instance_id" {
  byte_length = 2
}

module "snapshot_policy" {
  source = "../../modules/schedules"
  start_time = var.start_time
  storage_locations = var.storage_locations
  zone = var.zone
  region = var.region
  project = var.project
  retention_policy = var.retention_policy
  label = var.label
  hours_in_cycle = var.hours_in_cycle
  policy_name = var.policy_name 
}


