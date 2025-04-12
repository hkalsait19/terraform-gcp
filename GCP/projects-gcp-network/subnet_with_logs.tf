resource "google_compute_subnetwork" "subnet_with_logs" {
  name = "subnet-with-logs"
  ip_cidr_range = "10.0.3.0/24"
  region = "us-central1"
  network = google_compute_network.custom_vpc.id
  log_config {
    aggregation_interval = "INTERVAL_5_SEC"
    flow_sampling = 0.5
    metadata = "INCLUDE_ALL_METADATA"
  }
}