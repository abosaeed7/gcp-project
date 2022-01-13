terraform {
  backend "gcs" {
    bucket  = "bucket_gke_test1"
    prefix  = "terraform/state"
  }
}