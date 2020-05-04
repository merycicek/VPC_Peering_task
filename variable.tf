variable "vpc_cidr" {}
 variable "ami" {}

variable "private_cidr1" {}
variable "private_cidr2" {}
variable "private_cidr3" {}


variable "public_cidr1" {}
variable "public_cidr2" {}
variable "public_cidr3" {}





variable "region" {}
 variable "region_name" {}
variable "az1" {}
variable "az2" {}
variable "az3" {}

# variable "peer_owner_id" {}
  
  variable "tags" {
    type = "map"
}
