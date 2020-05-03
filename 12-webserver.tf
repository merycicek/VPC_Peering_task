resource "aws_instance" "web" {
  ami           = "${var.ami}"
  instance_type = "t2.micro"
  subnet_id = "${aws_subnet.public2.id}"
  availability_zone = "${var.region}${var.az2}"
  vpc_security_group_ids = ["${aws_security_group.web_sec.id}"]
  associate_public_ip_address = true
  source_dest_check = false
  user_data = "${file("apache.sh")}"
  key_name  =  "${aws_key_pair.us-east-2-key.key_name}"

  tags = "${var.tags}"
   
}