resource "google_storage_bucket" "gcs_bucket" {
  project       = "terraform-gcp-456510-tfgcp"
  name          = "tf-buckt-frm-terraform-code-block"
  location      = "us-central1"
  storage_class = "STANDARD"
  uniform_bucket_level_access = true
#   retention_policy {
#     is_locked = true #true
#     retention_period = 1
#   }

  lifecycle_rule {
    action {
      type = "SetStorageClass"
      storage_class = "Standard"
    }
    condition {
      age = 1
    }
  }
  labels = {
    env  = "testing"
    team = "billing"
  }
}

resource "google_storage_bucket_object" "obj_in_bucket" {
  name = "motivation_image"
  bucket = google_storage_bucket.gcs_bucket.name
  source = "motivation-skills.jpg"
}