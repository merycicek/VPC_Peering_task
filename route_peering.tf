resource "aws_route" "peer_r"{
    route_table_id  = "${aws_route_table.r.id}"
    destination_cidr_block = "${var.cidr_block}" 
    vpc_peering_connection_id = "${aws_vpc_peering_connection.peer.id}"
}

resource "aws_route" "peer_r1"{
    route_table_id  = "${aws_route_table.r.id}"
    destination_cidr_block = "${var.cidr_block}" 
    vpc_peering_connection_id = "${aws_vpc_peering_connection.peer.id}"
}
