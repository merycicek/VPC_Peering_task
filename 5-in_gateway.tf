resource "aws_internet_gateway" "mygtw" {
    vpc_id = "${aws_vpc.myperfect_vpc.id}"
     tags = "${var.tags}"
  
}
  