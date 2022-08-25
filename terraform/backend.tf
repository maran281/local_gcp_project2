terraform {
  backend "gcs" {
    bucket = "testblablablabucket"
    prefix = "pocState"
    # credentials = "C:/gcp_poc/key/cla-poc-key.json"
    credentials = file("./cla-poc-key.json")
  }
} 