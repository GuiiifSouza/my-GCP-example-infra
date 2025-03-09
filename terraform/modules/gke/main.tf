resource "google_container_cluster" "primary" {
  name     = var.k8s_cluster_name
  location = var.region

  deletion_protection = false

  initial_node_count = var.node_count

  node_config {
    machine_type = var.instance_type
    oauth_scopes = [
      "https://www.googleapis.com/auth/cloud-platform"
    ]

    disk_size_gb = var.node_ssd_size_gb
    disk_type    = "pd-ssd"
  }

  network    = var.vpc_network
  subnetwork = var.public_subnet_id

  private_cluster_config {
    enable_private_endpoint = false
    enable_private_nodes    = false
  }

  node_locations = var.availability_zones
}
