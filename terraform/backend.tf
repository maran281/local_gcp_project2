terraform {
  backend "gcs" {
    bucket = "tf_sample_cla-001"
    prefix = "pocState"
  }
}