# variables.tf

variable "gcp_project" {
  description = "The GCP project ID"
  type        = string
  default     = "byron-internal"
}

variable "gcp_zone" {
  description = "The GCP zone to deploy resources in"
  type        = string
  default     = "us-central1-a"
}

variable "machine_type" {
  description = "The machine type for the instance"
  type        = string
  default     = "m3-ultramem-32"
}

variable "boot_image" {
  description = "The boot disk image"
  type        = string
  default     = "debian-cloud/debian-11"
}