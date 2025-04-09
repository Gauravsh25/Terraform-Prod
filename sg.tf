resource "aws_security_group" "tf_sg" {
  name        = "tf-security-group"
  description = "Allow SSH and HTTP traffic"
  #vpc_id      = aws_vpc.example_vpc.id


  # Inbound Rules
  ingress {
    description = "Allow SSH from anywhere"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["223.233.65.248/32"]
  }


  # Outbound Rules (default allow-all)
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "Real-Device-SG"
  }
}

