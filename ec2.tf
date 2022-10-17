
resource "aws_instance" "server-1" {
  ami           = var.amazon_ubuntu
  instance_type = var.instance_type
  key_name      = var.key_name

  subnet_id                   = aws_subnet.public-sub1.id
  vpc_security_group_ids      = [aws_security_group.sec-gp.id]
  associate_public_ip_address = true
  availability_zone           = var.AZ-1
  user_data                   = "${file("data.sh")}"



  tags = {
    "Name" : "server-1"
  }
}

resource "aws_instance" "server-3" {
  ami           = var.amazon_ubuntu
  instance_type = var.instance_type
  key_name      = var.key_name

  subnet_id                   = aws_subnet.public-sub2.id
  vpc_security_group_ids      = [aws_security_group.sec-gp.id]
  associate_public_ip_address = true
  availability_zone           = var.AZ-2
  user_data                   = "${file("data.sh")}"



  tags = {
    "Name" : "server-3"
  }
}


# Create a EC2 Instance (Ubuntu 18)
resource "aws_instance" "server-2" {
  instance_type               = var.instance_type # free instance
  ami                         = var.amazon_ubuntu
  key_name                    = var.key_name
  vpc_security_group_ids      = [aws_security_group.sec-gp.id]
  subnet_id                   = aws_subnet.priv-sub2.id
  associate_public_ip_address = true
  availability_zone           = var.AZ-2
  user_data                   = "${file("data.sh")}"

  tags = {
    Name = "server-2"
  }
}





