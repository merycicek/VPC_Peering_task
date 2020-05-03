resource "aws_vpc" "myperfect_vpc" {
    cidr_block = "${var.vpc_cidr}"
    tags = "${var.tags}"
  
}
