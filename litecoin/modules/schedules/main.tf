resource "random_id" "instance_id" {
  byte_length = 2
}

resource "google_compute_resource_policy" "snapshot_policy" {
  name   = "${var.policy_name}-${random_id.instance_id.hex}"
  region = var.region
  snapshot_schedule_policy {
    schedule {
      hourly_schedule {
        hours_in_cycle = var.hours_in_cycle
        start_time     = var.start_time
      }
    }
    retention_policy {
      max_retention_days    = var.retention_policy["max_retention_days"]
      on_source_disk_delete = var.retention_policy["on_source_disk_delete"]
    }
    snapshot_properties {
      labels = {
        item_label = var.label
      }
      storage_locations = var.storage_locations
      guest_flush       = false
    }
  }
}