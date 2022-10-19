provider "google" {
  project = var.project_id
  region  = var.region
}

terraform {
  backend "gcs" {
    bucket = "state-bucket-2"
    prefix = "terraform/state"
  }
}
