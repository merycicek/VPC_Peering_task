resource "aws_route" "rp"{
    route_table_id  ="${aws_route_table.r.id}"
    destination_cidr_block ="${var.vpc_cidr}" 
    vpc_peering_connection_id ="${aws_vpc_peering_connection.peer.id}"
}

resource "aws_route" "rp1"{
    route_table_id  ="${aws_route_table.pr.id}"
    destination_cidr_block ="${var.vpc_cidr}" 
    vpc_peering_connection_id ="${aws_vpc_peering_connection.peer.id}"
}