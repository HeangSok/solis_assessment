output "vpc_id" {
  value       = google_compute_network.vpc.id
  description = "vpc id"
}

output "subnet_id" {
  value       = google_compute_subnetwork.subnet.id
  description = "subnet id"
}