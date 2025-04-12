## 

terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "6.29.0"
    }
  }
}

provider "google" {
  # Configuration options
  project = "terraform-gcp-456510-tfgcp"
  region  = "us-central1"
  zone    = "us-central1-a"
  credentials = "key.json"
}

resource "google_storage_bucket" "gcs_name" {
  name     = "bucket-from-tf-via-sa"
  location = "us-central1"
}