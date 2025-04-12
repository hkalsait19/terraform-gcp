terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "6.29.0"
    }
  }
}

provider "google" {
  project = "terraform-gcp-456510-tfgcp"
  region  = "us-central1"
  zone    = "us-central1-a"
}