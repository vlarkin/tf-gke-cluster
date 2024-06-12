provider "google" {
  project = var.project_id
  region  = var.region
}

terraform {
  backend "gcs" {
    bucket  = "skillful-fx-417519-tf-state"
    prefix  = "fluxcd-demo-tf-state"
  }
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.27.0"
    }
    flux = {
      source  = "fluxcd/flux"
      version = "0.20.0"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = ">= 2.0.2"
    }
    kubectl = {
      source  = "gavinbunney/kubectl"
      version = ">= 1.10.0"
    }
  }
}

provider "kubernetes" {
  config_path    = "~/.kube/config"
  config_context = "gke_skillful-fx-417519_europe-west1_demo"
}

provider "kubectl" {
  config_path    = "~/.kube/config"
  config_context = "gke_skillful-fx-417519_europe-west1_demo"
}
