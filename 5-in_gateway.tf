resource "aws_internet_gateway" "mygt" {
    vpc_id = "${aws_vpc.myperfect_vpc.id}"
     tags = "${var.tags}"
  
}