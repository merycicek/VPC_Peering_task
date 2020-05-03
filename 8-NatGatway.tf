    resource "aws_nat_gateway" "nat" {
        allocation_id = "${aws_eip.nat.id}"
        subnet_id = "${aws_subnet.public1.id}"

  
 }
# need to allocate with elastic Ip address
resource "aws_eip" "nat" {
# instance ="${aws_instance.web.id}"
  vpc = true
   tags = "${var.tags}"
}