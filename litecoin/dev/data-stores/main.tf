
module ledger {
    source = "../../modules/data-stores"
    name = var.name
    project = var.project
    boot_disk_type = var.boot_disk_type
    boot_disk_size = var.boot_disk_size
    zone = var.zone
}
