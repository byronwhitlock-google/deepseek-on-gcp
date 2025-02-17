# outputs.tf

output "instance_name" {
  value       = google_compute_instance.inference-testing.name
  description = "The name of the compute instance"
}

output "instance_zone" {
  value       = google_compute_instance.inference-testing.zone
  description = "The zone of the compute instance"
}

output "instance_ip" {
  value       = google_compute_instance.inference-testing.network_interface[0].access_config[0].nat_ip
  description = "The public IP address of the compute instance"
  sensitive = true
}