terraform {
  backend "s3" {
     bucket = "vasu-james-bond-bucket"
     key = "vasu-instance-state"
     region = "ap-south-1"
  }
}
