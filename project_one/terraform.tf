terraform {
  backend "gcs"{
    bucket      = "INSERT_THE_BUCKET_NAME_HERE"
  }
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.13.0"
    }
  }
}
