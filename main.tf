
#resource "aws_sns_topic" "user_updates1" {
#  provider = aws.dev
#  name = "${var.res_name}-dev-updates-topic"
#  #name = "jeremy001-updates-topic"
#}


#resource "aws_sns_topic" "user_updates2" {
#  provider = aws.prd
#  name = "${var.res_name}-prd-updates-topic"
#  #name = "jeremy001-updates-topic"
#}

resource "aws_instance" "jeremy_server_0219" {
  ami           = "ami-0e731c8a588258d0d"
  instance_type = "t2.micro"
  subnet_id     = "subnet-0d647d78d2309afc0"
  key_name      = "jeremy_useast1_20240113"
  vpc_security_group_ids = [aws_security_group.my_sg.id]
  associate_public_ip_address = true
  
  tags = {
    Name = "jeremy-ec2-0219"
  }
}

resource "aws_security_group" "my_sg" {
  name   = "jeremy-security-group-http-https-ssh"
  vpc_id = "vpc-02c3cea2893bac90f"

  tags = {
    Name = "jeremy-sec-grp-http-https-ssh"
  }

  egress  = []

  ingress {
    from_port = 22
    to_port   = 22
    protocol  = "tcp"
    cidr_blocks = ["0.0.0.0/0"]  # Allow SSH from any IP address. You may want to restrict this based on your needs.
  }

  ingress {
    from_port = 23
    to_port   = 23
    protocol  = "tcp"
    cidr_blocks = ["0.0.0.0/0"]  # Allow telnet from any IP address. You may want to restrict this based on your needs.
  }

  ingress {
    from_port = 80
    to_port   = 80
    protocol  = "tcp"
    cidr_blocks = ["0.0.0.0/0"]  # Allow http from any IP address. You may want to restrict this based on your needs.
  }

  ingress {
    from_port = 443
    to_port   = 443
    protocol  = "tcp"
    cidr_blocks = ["0.0.0.0/0"]  # Allow https from any IP address. You may want to restrict this based on your needs.
  }
}