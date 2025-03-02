
terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 6.23"
    }
  }
}

provider "google" {
  project = var.project_id
  region  = "europe-central2"
}
