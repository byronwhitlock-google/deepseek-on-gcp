resource "google_compute_disk" "hyperdisk_balanced" {
  name   = "hyperdisk-2tb"
  zone   = "us-central1-a"
  type   = "hyperdisk-balanced" # Corrected disk type
  size   = 2000 # Size in GB (2 TB)
}

resource "google_compute_instance" "inference-testing" {
  name         = "inference-testing"
  machine_type = "c4a-highmem-72"
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "projects/ubuntu-os-pro-cloud/global/images/family/ubuntu-pro-2204-lts-arm64" # Correct Ubuntu Pro ARM64 image family
      size  = 50
    }
  }

  network_interface {
    network = "default"
    access_config {
    }
  }

  attached_disk {
    source      = google_compute_disk.hyperdisk_balanced.id
    device_name = "hyperdisk-2tb"
  }
}