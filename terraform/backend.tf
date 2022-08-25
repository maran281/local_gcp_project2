terraform {
  backend "gcs" {
    bucket = "testblablablabucket"
    prefix = "pocState"
  }
} 