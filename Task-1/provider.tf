terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "6.4.0"
    }
  }
}

provider "google" {
  # project = "project_id"
  # region = "us-central1"
  # credentials = "keys.json_location"
}