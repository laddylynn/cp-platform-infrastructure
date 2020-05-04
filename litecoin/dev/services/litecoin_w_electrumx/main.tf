terraform {
  required_version = ">= 0.12, < 0.13"
}

module "litecoin_w_electrumx" {
  source = "../../../modules/services"
  environment = var.environment
  region = var.region
  zone = var.zone
  snapshot_policy_name = var.snapshot_policy_name
  project = var.project
  name = var.name
  storage_locations = var.storage_locations
  litecoin_ledger = var.litecoin_ledger
  electrumx_ledger = var.electrumx_ledger
  electrumx_startup_script = var.electrumx_startup_script
  litecoin_startup_script = "cd /home/${var.user}/litecoin/bin; sudo -u ${var.user} ./litecoind -daemon && sudo service google-fluentd start"
  machine_type = var.machine_type
  litecoin_snapshot = var.litecoin_snapshot
  electrumx_snapshot = var.electrumx_snapshot
}


