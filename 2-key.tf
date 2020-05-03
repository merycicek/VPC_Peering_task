resource "aws_key_pair" "us-east-2-key" {
    key_name = "VPC_peering_key"
    public_key = "${file("~/.ssh/id_rsa.pub")}"
  
}