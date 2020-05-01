resource "random_id" "instance_id" {
  byte_length = 2
}

resource "google_compute_resource_policy" "snapshot_policy" {
  name   = "${var.environment}-${local.snapshot_policy_name}-${random_id.instance_id.hex}"
  region = var.region
  snapshot_schedule_policy {
    schedule {
      hourly_schedule {
        hours_in_cycle = local.hours_in_cycle
        start_time     = local.start_time
      }
    }
    retention_policy {
      max_retention_days    = local.retention_policy["max_retention_days"]
      on_source_disk_delete = local.retention_policy["on_source_disk_delete"]
    }
    snapshot_properties {
      labels = {
        item_label = local.label
      }
      storage_locations = var.storage_locations
      guest_flush       = false
    }
  }
}

locals {
  label = "litecoin"
  retention_policy = {
    max_retention_days = 8
    on_source_disk_delete = "KEEP_AUTO_SNAPSHOTS"
  }
  snapshot_policy_name = "litecoin-policy"
  hours_in_cycle = 12
  start_time = "08:00"
}