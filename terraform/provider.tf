terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0" # Or your preferred version
    }
  }
}

provider "google" {
  project = "byron-internal"
  # Add your credentials here, or use application default credentials.
  # credentials = file("path/to/your/credentials.json")
}