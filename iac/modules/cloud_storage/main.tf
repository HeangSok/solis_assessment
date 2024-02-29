resource "google_storage_bucket" "test_bucket" {
  name     = "${name}-${var.env}"
  location = var.location
  storage_class = var.storage_class

  labels = {
    environment = var.env
    terraform   = "true"
  }
}