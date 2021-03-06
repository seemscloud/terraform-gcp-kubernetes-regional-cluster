resource "google_container_cluster" "aaa_gke_aaa" {
  name = var.aaa_gke_aaa-name

  location = var.aaa_gke_aaa-region
  node_locations = var.aaa_gke_pool_aaa-zones

  min_master_version = var.aaa_gke_aaa-min_version

  network = var.aaa_vpc_aaa
  subnetwork = var.aaa_gke_aaa-subnetwork_name

  initial_node_count = var.aaa_gke_aaa-init
  remove_default_node_pool =  true

  ip_allocation_policy {

  }

  master_auth {
    client_certificate_config {
      issue_client_certificate = false
    }
  }

  addons_config {
    http_load_balancing {
      disabled = false
    }
    horizontal_pod_autoscaling {
      disabled = false
    }
  }

  vertical_pod_autoscaling {
    enabled = true
  }

  cluster_autoscaling {
    enabled = true

    resource_limits {
      minimum = 10
      maximum = 50
      resource_type = "cpu"
    }

    resource_limits {
      minimum = 10
      maximum = 50
      resource_type = "memory"
    }
  }

  workload_identity_config {
    workload_pool  = "${var.project_id}.svc.id.goog"
  }

  depends_on = [
    var.dependencies,
    google_service_account.aaa_gke_aaa]
}

