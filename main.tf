data "terraform_remote_state""network_details" {
 backend="s3"
 config={
  bucket = "vasu-james-bond-bucket"
  key = "vasu-network-state"
  region = "ap-south-1"
 }
}
