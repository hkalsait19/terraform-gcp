resource "google_compute_router" "nat_router" {
  name    = "nat-router"
  region  = "us-central1"
  network = google_compute_network.custom_vpc.id
}

resource "google_compute_router_nat" "nat_gateway" {
  name                               = "nat-gateway"
  router                             = google_compute_router.nat_router.name
  region                             = google_compute_router.nat_router.region
  nat_ip_allocate_option             = "AUTO_ONLY"
  source_subnetwork_ip_ranges_to_nat = "ALL_SUBNETWORKS_ALL_IP_RANGES"
}