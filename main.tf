
 

 resource "aws_vpc" "vpc-3" {
  cidr_block       = var.cidr_block
  instance_tenancy = "default"

  tags = {
    Name = "vpc-3"
  }
}



resource "aws_subnet" "public-sub1" {

  vpc_id            = aws_vpc.vpc-3.id
    cidr_block        = var.public-sub1
  availability_zone = var.AZ-1

  tags = {
    Name = "public-sub1"
  }
}

# Public subnet2
resource "aws_subnet" "public-sub2" {
  vpc_id            = aws_vpc.vpc-3.id
  cidr_block        = var.public-sub2
  availability_zone = var.AZ-2

  tags = {
    Name = "public-sub2"
  }
}

# Private subnet1
resource "aws_subnet" "priv-sub1" {
  vpc_id            = aws_vpc.vpc-3.id
  cidr_block        = var.priv-sub1
  availability_zone = var.AZ-1

  tags = {
    Name = "priv-sub1"
  }
}

# Private subnet2
resource "aws_subnet" "priv-sub2" {
  vpc_id            = aws_vpc.vpc-3.id
  cidr_block        = var.priv-sub2
  availability_zone = var.AZ-2
  tags = {
    Name = "priv-sub2"
  }
}


# Creating Internet Gateway 
# internet gateway
resource "aws_internet_gateway" "int-gatwy" {
  vpc_id = aws_vpc.vpc-3.id

  tags = {
    Name = "int-gatwy"
  }
}

# Elastic Ip
resource "aws_eip" "nat_eip" {
  vpc                       = true
  associate_with_private_ip = var.priv-sub1
  depends_on                = [aws_internet_gateway.int-gatwy]
  tags = {
    Name = "nat_eip"
  }
}


# Nat Gateway

resource "aws_nat_gateway" "Nat-gatwy" {
  allocation_id = aws_eip.nat_eip.id

  #Associate it with one of the public subnets
  subnet_id = aws_subnet.public-sub1.id
  # subnet_id      = aws_subnet.public_subnet2.id

  tags = {
    Name = "nat-gatwy"
  }
}

#

# application load balancer

/* resource "aws_lb" "test" {
  name               = "test-lb-tf"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.lb_sg.id]
  subnets            = [for subnet in aws_subnet.public : subnet.id]

  enable_deletion_protection = false */

  /* access_logs {
    bucket  = aws_s3_bucket.lb_logs.bucket
    prefix  = "test-lb"
    enabled = true
  }

  tags = {
    Environment = "production"
  } 
} */


/* resource "aws_lb_target_group_attachment" "external-alb" {
  target_group_arn = aws_lb_target_group.attachment-1.arn
  target_id        = aws_instance.server-1.id
  port             = 80
depends_on = [
    aws_instance.server-1,
  ]
}
resource "aws_lb_target_group_attachment" "external-alb" {
  target_group_arn = aws_lb_target_group.external-alb.arn
  target_id        = aws_instance.server-3.id
  port             = 80
depends_on = [
    aws_instance.server-3,
  ]
} */
/* resource "aws_lb_listener" "external-elb" {
  load_balancer_arn = aws_lb.external-alb.arn
  port              = "80"
  protocol          = "HTTP"
default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.external-alb.arn
  }
} */

