#3-subnets.tf

# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_subnetwork
resource "google_compute_subnetwork" "hqinternal" {
  name                     = "hqinternal"
  ip_cidr_range            = "10.190.52.0/24"
  region                   = "us-central1"
  network                  = google_compute_network.cwglobal1.id
  private_ip_google_access = true


}
resource "google_compute_subnetwork" "sainternal" {
  name                     = "sainternal"
  ip_cidr_range            = "10.190.62.0/24"
  region                   = "southamerica-east1"
  network                  = google_compute_network.cwglobal1.id
  private_ip_google_access = true


}

resource "google_compute_subnetwork" "asiainternal" {
  name                     = "asiainternal"
  ip_cidr_range            = "10.190.72.0/24"
  region                   = "asia-northeast1"
  network                  = google_compute_network.cwglobal1.id
  private_ip_google_access = true


}