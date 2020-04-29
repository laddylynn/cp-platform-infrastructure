output "self_link" {
  value = "${google_compute_disk.default.self_link}"
}

output "ledger_name" {
  value = google_compute_disk.default.name
}

