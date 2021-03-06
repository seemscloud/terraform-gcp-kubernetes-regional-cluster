# Network
output "aaa_vpc_aaa-name" {
  value = google_compute_network.aaa_vpc_aaa.name
}

output "aaa_vpc_aaa-id" {
  value = google_compute_network.aaa_vpc_aaa.id
}

output "aaa_gke_aaa-subnetwork_name" {
  value = google_compute_subnetwork.aaa_gke_aaa.name
}

output "aaa_gke_pool_aaa-subnetwork_name" {
  value = google_compute_subnetwork.aaa_gke_pool_aaa.name
}

output "aaa_gke_aaa-router_nat" {
  value = google_compute_router_nat.aaa_gke_aaa
}