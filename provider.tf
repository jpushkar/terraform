provider "google" {
  credentials = file("credentials.json")
  project     = "ops-poc"
  region      = "us-central1"
}
