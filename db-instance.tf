#  Database instance
resource "aws_db_instance" "default" {
  allocated_storage    = var.allocated_storage
  db_subnet_group_name = aws_db_subnet_group.default.id
  db_name              = "mydb"
  engine               = var.engine
  engine_version       = var.engine_version
  instance_class       = var.instance_class
  username             = var.username
  password             = var.password
  parameter_group_name = var.parameter_group_name
  vpc_security_group_ids = [aws_security_group.db-sg.id]
  skip_final_snapshot  = true
}

# db subnet group
resource "aws_db_subnet_group" "default" {
  name       = "main"
  subnet_ids = [aws_subnet.public-sub1.id, aws_subnet.public-sub2.id]
tags = {
    Name = "db-subnet-gp"
  }
}