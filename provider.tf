terraform {

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.51.0"
    }

  }
}


provider "google" {
  credentials = file("sa.json") #create a SA and generate the Key and provide the JSON file here)
  project = var.project_id
  region  = var.region
}
