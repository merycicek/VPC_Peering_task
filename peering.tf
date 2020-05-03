resource "aws_vpc" "peer" {
  provider   = "aws.peer"
  cidr_block = "192.168.0.0/16"
}
data "aws_caller_identity" "peer" {
  provider = "aws.peer"
}
# Requester's side of the connection.
resource "aws_vpc_peering_connection" "peer" {
  vpc_id        = "vpc-0bfeb2efaf8eeb23e"
  peer_vpc_id   = "vpc-0663aa130f21dfe6b"
  peer_owner_id = "963826759814"
  #peer_accepter_id = "052063109334 "
  peer_region   = "us-east-1"
  auto_accept   = false
  tags = {
    Side = "Requester"
  }
}






resource "aws_vpc_peering_connection" "Task4" {
  
  peer_owner_id = "${var.peer_owner_id}"
  peer_vpc_id   = "vpc-0663aa130f21dfe6b"
  vpc_id        = "vpc-0bfeb2efaf8eeb23e"
  accepter      = "460548820579"
  requester     = "963826759814"

  peer_region   = "us-east-1"
}

resource "aws_vpc" "meryem" {
  provider   = "${var.region}"
  cidr_block = "192.168.0.0/16"
}

resource "aws_vpc" "otherperson" {
  provider   = "${var.region}"
  cidr_block = "10.0.0.0/16"
}


 resource "aws_vpc_peering_connection" "mery" {
  peer_owner_id = "460548820579"
  peer_vpc_id   = "vpc-0663aa130f21dfe6b"
  vpc_id        = "vpc-0bfeb2efaf8eeb23e"

   accepter {
    allow_remote_vpc_dns_resolution = true
  }

  requester {
    allow_remote_vpc_dns_resolution = true
  }
}




# owner profile
# provider "aws" {
#   profile = "${var.owner_profile}"
#   region  = "${var.region}"
# }
# #accepter profile 
# provider "aws" {
#   alias = "accepter"
#   region  = "${var.region}"
#   profile = "${var.accepter_profile}"
# }
# #this code extract the account-id
#  data "aws_vpc" "accepter" {
#     provider = "aws.accepter"
#      id = "${var.accepter_vpc_id}"
#  }
# locals {
#   accepter_account_id = "${element(split(":", data.aws_vpc.accepter.arn), 4)}"
# }
# #here start to peering and acceptance 
# resource "aws_vpc_peering_connection" "owner" {
#   vpc_id = "${var.owner_vpc_id}"
#   peer_vpc_id   = "${data.aws_vpc.accepter.id}"
#   peer_owner_id = "${local.accepter_account_id}"  
#   tags {
#     Name = "peer_to_${var.accepter_profile}"
#   }
# }
# #here start to peering acceptance 
# resource "aws_vpc_peering_connection_accepter" "accepter" {
#   provider                  = "aws.accepter"
#   vpc_peering_connection_id = "${aws_vpc_peering_connection.owner.id}"
#   auto_accept               = true
#   tags {
#     Name = "peer_to_${var.owner_profile}"
#   }
# }
# #update route tables information using vpc cidr
# data "aws_vpc" "owner" {
#     id = "${var.owner_vpc_id}"
# }
# data "aws_route_tables" "accepter" {
#   provider = "aws.accepter"
#   vpc_id = "${data.aws_vpc.accepter.id}"
# }
# data "aws_route_tables" "owner" {
#   vpc_id = "${var.owner_vpc_id}"
# }
# resource "aws_route" "owner" {
#   count = "${length(data.aws_route_tables.owner.ids)}"
#   route_table_id            = "${data.aws_route_tables.owner.ids[count.index]}"
#   destination_cidr_block    = "${data.aws_vpc.accepter.cidr_block}"
#   vpc_peering_connection_id = "${aws_vpc_peering_connection.owner.id}"
# }   
# resource "aws_route" "accepter" {
#   provider = "aws.accepter"
#   count = "${length(data.aws_route_tables.accepter.ids)}"
#   route_table_id            = "${data.aws_route_tables.accepter.ids[count.index]}"
#   destination_cidr_block    = "${data.aws_vpc.owner.cidr_block}"
#   vpc_peering_connection_id = "${aws_vpc_peering_connection.owner.id}"
# } 