data "terraform_remote_state""network_details" {
 backend="s3"
 config={
  bucket = "vasu-james-bond-bucket"
  key = "vasu-network-state"
  region = "ap-south-1"
 }
}

resource "aws_instance""my_vm" {
 ami = "ami-0f2e255ec956ade7f"
subnet_id = data.terraform_remote_state.network_details.outputs.my_subnet
instance_type = "t2.micro"
tags = {
    Name = "vasu-vm1"
 }
}
