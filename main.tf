
module "gke_cluster" {
  source         = "https://github.com/vlarkin/tf-google-gke-cluster"
  GOOGLE_PROJECT = var.GOOGLE_PROJECT
  GOOGLE_REGION  = var.GOOGLE_REGION
  GKE_NUM_NODES  = var.GKE_NUM_NODES
}

terraform {
  backend "gcs" {
    bucket = "skillful-fx-417519-tf-state"
    prefix = "terraform/state"
  }
}
