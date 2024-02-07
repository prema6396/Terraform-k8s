terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "5.15.0"
    }
  }
}

provider "google" {
 
  credentials = "keys.json"  # Replace with the actual path to your service account JSON key file
  project     = "encoded-stage-408805"                               # Replace with your Google Cloud project ID
  region      = "us-central1"                                    # Replace with your desired region, e.g., "us-central1"

}
resource "google_container_cluster" "my_cluster" {
  name     = "my-gke1-cluster"
  location = "us-central1-a"                           # Replace with your desired GKE cluster location, e.g., "us-central1-a"

  initial_node_count = 1

  node_config {
    machine_type = "e2-medium"
  }
  deletion_protection = false
}
