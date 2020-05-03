# resource "aws_vpc" "peer" {
#   provider   = "aws.peer"
#   cidr_block = "192.168.0.0/16"
# }
# data "aws_caller_identity" "peer" {
#   provider = "aws.peer"
# }
# # Requester's side of the connection.
# resource "aws_vpc_peering_connection" "peer" {
#   vpc_id        = "vpc-0bfeb2efaf8eeb23e"
#   peer_vpc_id   = "vpc-0663aa130f21dfe6b"
#   peer_owner_id = "963826759814"
#   #peer_accepter_id = "052063109334 "
#   peer_region   = "us-east-1"
#   auto_accept   = false
#   tags = {
#     Side = "Requester"
#   }
# }






# # resource "aws_vpc_peering_connection" "Task4" {
  
# #   peer_owner_id = "${var.peer_owner_id}"
# #   peer_vpc_id   = "vpc-0663aa130f21dfe6b"
# #   vpc_id        = "vpc-0bfeb2efaf8eeb23e"
# # #   accepter      = "460548820579"
# # #   requester     = "963826759814"

# #   peer_region   = "us-east-1"
# # }

# # # resource "aws_vpc" "meryem" {
# # # #   provider   = "${var.region}"
# # #   cidr_block = "192.168.0.0/16"
# # # }

# # # resource "aws_vpc" "otherperson" {
# # # #   provider   = "${var.region}"
# # #   cidr_block = "10.0.0.0/16"
# # # }


#  resource "aws_vpc_peering_connection" "mery" {
#   peer_owner_id = "460548820579"
#   peer_vpc_id   = "vpc-0663aa130f21dfe6b"
#   vpc_id        = "vpc-0bfeb2efaf8eeb23e"

#    accepter {
#     allow_remote_vpc_dns_resolution = true
#   }

#   requester {
#     allow_remote_vpc_dns_resolution = true
#   }
# }