
resource "google_compute_instance" "django" {
  count        = 3
  name         = "django-vm-${count.index}"
  machine_type = "e2-medium"
  zone         = "europe-central2"

  boot_disk {
    initialize_params {
      image = "ubuntu-2404-lts"
    }
  }

  network_interface {
    network = google_compute_network.vpc_network.self_link
    access_config {}
  }
}

resource "google_compute_instance" "redis" {
  name         = "redis"
  machine_type = "e2-small"
  zone         = "europe-central2"

  boot_disk {
    initialize_params {
      image = "ubuntu-2204-lts"
    }
  }

  network_interface {
    network = google_compute_network.vpc_network.self_link
    access_config {}
  }
}

resource "google_compute_instance" "postgresql_master" {
  name         = "postgresql-master"
  machine_type = "e2-medium"
  zone         = "europe-central2"

  boot_disk {
    initialize_params {
      image = "ubuntu-2404-lts"
    }
  }

  network_interface {
    network = google_compute_network.vpc_network.self_link
    access_config {}
  }
}

resource "google_compute_instance" "postgresql_replica" {
  name         = "postgresql-replica"
  machine_type = "e2-medium"
  zone         = "europe-central2"

  boot_disk {
    initialize_params {
      image = "ubuntu-2404-lts"
    }
  }

  network_interface {
    network = google_compute_network.vpc_network.self_link
    access_config {}
  }
}
