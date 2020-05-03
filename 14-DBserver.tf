resource "aws_instance" "db" {
  ami           = "${var.ami}"
  instance_type = "t2.micro"
  subnet_id = "${aws_subnet.private1.id}"
  availability_zone = "${var.region}${var.az1}"
  vpc_security_group_ids = ["${aws_security_group.db_sec.id}"]
  associate_public_ip_address = false
  source_dest_check = false
  user_data = "${file("mysql.sh")}"
  key_name  =  "${aws_key_pair.us-east-2-key.key_name}"

  tags = "${var.tags}"
   
}
