## custom VPC

resource "google_compute_network" "custom_vpc" {
  name = "custom-vpc"
  auto_create_subnetworks = false ## why false bcz need to create it custom
}

resource "google_compute_subnetwork" "private_subnet" {
  name = "private-subnet"
  ip_cidr_range = "10.0.2.0/24"
  region = "us-central1"
  network = google_compute_network.custom_vpc.id
}

resource "google_compute_subnetwork" "public-subnet" {
  name = "public-subnet"
  ip_cidr_range = "10.0.1.0/24"
  region = "us-central1"
  network = google_compute_network.custom_vpc.id
}