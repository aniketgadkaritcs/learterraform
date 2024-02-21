resource "aws_security_group" "epsg" {
  name   = "ep_sg"
  vpc_id = var.vpcid

  ingress {
    from_port   = 443
    to_port     = 443
    cidr_blocks = [var.cidr]
    protocol    = "tcp"
  }
  tags = {
    Name = "ec2-vpcendpoint"
  }

}