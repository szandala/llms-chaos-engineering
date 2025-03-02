resource "google_compute_network" "vpc_network" {
  # creates default subnets
  name = "aiops-vpc-iccs"
}

resource "google_compute_forwarding_rule" "lb" {
  name                  = "djangos-lb"
  target                = google_compute_target_pool.default.self_link
  port_range            = "80"
  load_balancing_scheme = "EXTERNAL"
}

resource "google_compute_target_pool" "default" {
  name      = "djangos-pool"
  instances = google_compute_instance.django_instances.*.self_link
}
