# ---------------------------------------------------------------------------------------------------------------------
# REQUIRED PARAMETERS
# When you run Terraform code, it keeps track of the Google Cloud resources it manages in a state file. 
# By default, the state file is generated in your working directory, but as a best practice the state file should be kept in a GCS bucket instead
# ---------------------------------------------------------------------------------------------------------------------

terraform {
 backend "gcs" {
   bucket                      = "<update-this>"
   prefix                      = "terraform" 
   impersonate_service_account = "<update-this>@<updatethis>.iam.gserviceaccount.com"
 }
}