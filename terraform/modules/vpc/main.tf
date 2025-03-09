resource "google_compute_network" "main" {
  name                    = var.vpc_name
  auto_create_subnetworks  = false
  routing_mode             = "REGIONAL"
}

resource "google_compute_subnetwork" "public" {
  count             = length(var.availability_zones)
  name              = "public-subnet-${count.index}"
  region            = var.region
  network           = google_compute_network.main.id
  ip_cidr_range     = cidrsubnet(var.public_subnet_cidr_block, 2, count.index)
  private_ip_google_access = false
}

resource "google_compute_subnetwork" "private" {
  count             = length(var.availability_zones)
  name              = "private-subnet-${count.index}"
  region            = var.region
  network           = google_compute_network.main.id
  ip_cidr_range     = cidrsubnet(var.private_subnet_cidr_block, 2, count.index)
  private_ip_google_access = true
}
