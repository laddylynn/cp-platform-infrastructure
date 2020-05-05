resource "random_id" "instance_id" {
  byte_length = 2
}

terraform {
  required_version = ">= 0.12, < 0.13"
  backend "gcs" {
    bucket  = "tf-state-coolbitx-dev"
    prefix  = "experiment/schedules/state"
    credentials = "../../../account.json"
  }
}

module "snapshot_policy" {
  source = "../../modules/schedules"
  storage_locations = var.storage_locations
  zone = var.zone
  region = var.region
  project = var.project
  environment = var.environment
}
