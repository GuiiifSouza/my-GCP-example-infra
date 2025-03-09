output "vpc_id" {
  value = google_compute_network.main.id
}

output "public_subnet_ids" {
  value = google_compute_subnetwork.public[*].id
}

output "private_subnet_ids" {
  value = google_compute_subnetwork.private[*].id
}
