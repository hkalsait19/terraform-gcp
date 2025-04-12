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
}


# resource "google_storage_bucket" "gcs_name" {
#   name     = "bucket-from-tf-username-n-pass"
#   location = "us-central1"
#   lifecycle {
#     # create_before_destroy = true
#     # prevent_destroy = true
#     ignore_changes = [name]

#   }
# }