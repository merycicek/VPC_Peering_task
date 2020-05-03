output "public_subnets"{
    value = [
        "${aws_subnet.public1.id}          ${aws_subnet.public1.cidr_block}      ${aws_subnet.public1.availability_zone}",
         "${aws_subnet.public2.id}         ${aws_subnet.public2.cidr_block}      ${aws_subnet.public2.availability_zone}",
        "${aws_subnet.public3.id}          ${aws_subnet.public3.cidr_block}      ${aws_subnet.public3.availability_zone}"
    ]
}

output "private_subnets"{
    value = [
        "${aws_subnet.private1.id}      ${aws_subnet.private1.cidr_block}   ${aws_subnet.private1.availability_zone}",
         "${aws_subnet.private2.id}     ${aws_subnet.private2.cidr_block}   ${aws_subnet.private2.availability_zone}",
        "${aws_subnet.private3.id}      ${aws_subnet.private3.cidr_block}   ${aws_subnet.private3.availability_zone}"
    ]
}




output "key_pair"{
    value = "${aws_key_pair.us-east-2-key.key_name}"
}

output "instane_id"{
    value = "${aws_instance.bastion.id}"
}

output "instane_key_name"{
    value = "${aws_instance.bastion.key_name}"
}


output "vpc_cidr_block "{
    value = "${aws_vpc.myperfect_vpc.cidr_block}"
}

output "aws_internet_gateway_id "{
    value = "${aws_internet_gateway.mygtw.id}"
}



output "aws_IG_route_table_id "{
    value = "${aws_route_table.r.id}"
}

output "allocation_ip "{
    value = "${aws_eip.nat.id}"
}

output "aws_route_table_association1_id "{
    value = "${aws_route_table_association.b1.id}"
}

output "aws_route_table_association2_id "{
    value = "${aws_route_table_association.b2.id}"
}

output "aws_route_table_association3_id "{
    value = "${aws_route_table_association.b3.id}"
}

output "aws_route_table_association_private1_id "{
    value = "${aws_route_table_association.p1.id}"
}

output "aws_route_table_association_private2_id "{
    value = "${aws_route_table_association.p2.id}"
}

output "aws_route_table_association_private3_id "{
    value = "${aws_route_table_association.p3.id}"
}

output "aws_route_table_private_id "{
    value = "${aws_route_table.pr.id}"
}

