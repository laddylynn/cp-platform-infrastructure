
module ledger {
    source = "../../modules/data-stores"
    project = var.project
    boot_disk_type = var.boot_disk_type
    boot_disk_size = var.boot_disk_size
    zone = var.zone
    packer_image = var.packer_image
    environment = var.environment
    snapshot = var.snapshot
}
