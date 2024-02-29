terraform {
  required_version = ">= 1.0.11"
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = ">= 3.5.0, < 4.0.0" 
    }
  }
  # Configuring the backend as GCS for Remote State Storage
  backend "gcs" {}
}