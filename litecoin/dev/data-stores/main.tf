terraform {
  backend "gcs" {
    bucket  = "tf-state-coolbitx-dev"
    prefix  = "terraform/state"
    credentials = "../../../account.json"
  }
}

module ledger {
    source = "../../modules/data-stores"
    project = var.project
    zone = var.zone
    packer_image = var.packer_image
    environment = var.environment
    snapshot = var.snapshot
    actor = var.actor
}
