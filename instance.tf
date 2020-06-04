resource "google_compute_instance" "vm1" {
  name         = "my-terraform-instance"
  machine_type = "n1-standard-1"
  zone         = "us-central1-a"

  network_interface {
    network = "default"

    access_config {
      // Ephemeral IP
    }
  }
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
      size  = "20"
      type  = "pd-standard"
    }
  }
  #network tags
  tags = ["no-ip"]

  service_account {
    scopes = ["compute-rw"]
  }
  metadata = {
    foo = "bar"
  }


}