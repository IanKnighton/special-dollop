terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "6.33.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.7.2"
    }
  }
}

provider "google" {
  project = "my-project-id" // Replace with your project ID
  region  = "us-east1" // Replace with your desired region
  zone    = "us-east1-b" // Replace with your desired zone
}

provider "random" {
}