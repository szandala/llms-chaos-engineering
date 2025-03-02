output "django_ips" {
  value = google_compute_instance.django_instances.*.network_interface[0].access_config[0].nat_ip
}

output "redis_ip" {
  value = google_compute_instance.redis.network_interface[0].access_config[0].nat_ip
}

output "postgres_master_ip" {
  value = google_compute_instance.postgresql_master.network_interface[0].access_config[0].nat_ip
}

output "postgres_replica_ip" {
  value = google_compute_instance.postgresql_replica.network_interface[0].access_config[0].nat_ip
}
