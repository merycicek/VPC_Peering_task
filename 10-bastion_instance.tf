resource "aws_instance" "bastion" {
  ami           = "${var.ami}"
  instance_type = "t2.micro"
  subnet_id = "${aws_subnet.public1.id}"
  availability_zone = "${var.region}${var.az1}"
  vpc_security_group_ids = ["${aws_security_group.bastion_sec.id}"]
  associate_public_ip_address = true
  source_dest_check = false
  key_name  =  "${aws_key_pair.us-east-2-key.key_name}"

  tags = "${var.tags}"
   
}