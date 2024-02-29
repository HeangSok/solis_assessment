resource "google_compute_instance" "web" {
  name         = "${var.instance_name}-${var.env}"
  machine_type = var.machine_type
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = var.image
    }
  }

  network_interface {
    network = var.network_id
    subnetwork = var.subnet_id
  }

  metadata_startup_script = var.startup_script

  tags = var.tags

  service_account {
    scopes = ["https://www.googleapis.com/auth/cloud-platform"]
  }
}
