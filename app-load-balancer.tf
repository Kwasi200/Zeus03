# Creating External LoadBalancer
resource "aws_lb" "external-alb" {
  name               = "external-alb"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.sec-gp.id]
  subnets            = [aws_subnet.public-sub1.id, aws_subnet.public-sub2.id]
  enable_deletion_protection = false
}
# creating target group for load balancer
resource "aws_lb_target_group" "target-elb" {
  name     = "alb-tg"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.vpc-3.id
}


#first  target group attachment
resource "aws_lb_target_group_attachment" "attachment" {
  target_group_arn = aws_lb_target_group.target-elb.arn
  target_id        = aws_instance.server-1.id
  port             = 80
depends_on = [
    aws_instance.server-1,
  ]
}

 # second target group attachment
resource "aws_lb_target_group_attachment" "attachment2" {
  target_group_arn = aws_lb_target_group.target-elb.arn
  target_id        = aws_instance.server-3.id
  port             = 80
depends_on = [
    aws_instance.server-3,
  ]
}

# Getting the DNS of load balancer
output "lb_dns_name" {
  description = "The DNS name of the load balancer"
  value       = "${aws_lb.external-alb.dns_name}"
}