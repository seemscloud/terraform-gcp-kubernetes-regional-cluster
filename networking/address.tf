resource "google_compute_address" "aaa_gke_aaa-external" {
  name = var.aaa_gke_aaa-name

  address_type = "EXTERNAL"
}