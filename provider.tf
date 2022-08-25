# declaration of the Terraform backend. #

provider "google" {
  project     = var.gcp_project
  #credentials = file(var.gcp_auth_file)
  region      = var.gcp_region
  # credentials = file("C:/gcp_git_poc1/local_gcp_project3/terraform/cla-poc-key.json")
}