terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.13.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.1.2"
    }
  }
}

provider "google" {
  project = "roberts-project-23"
  region  = "us-central1"
}

