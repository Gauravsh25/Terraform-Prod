resource "aws_instance" "My-ec2-2" {
  ami           = "ami-0dee22c13ea7a9a67"
  instance_type = "t2.small"
  key_name      = "kube-demo"
  user_data     = file("kind.sh")
  count         = 3
  #depends_on      = [aws_instance.My-Ubuntu-Server]
  #security_groups = ["tf-security-group"]
  tags = {
    Name    = "Web-Server-${count.index}"
    Team    = "Real Device"
    creator = "gauravsharma25861@gmail.com"

  }
}

/*
resource "aws_instance" "My-Ubuntu-Server" {
  ami             = "ami-0dee22c13ea7a9a67"
  instance_type   = "t2.micro"
  key_name        = "kube-demo"
  user_data       = file("kind.sh")
  #depends_on      = [aws_instance.My-ec2-2]
  count           = 1
  security_groups = ["tf-security-group"]
  tags = {
    Name    = "Web-Server-2"
    Team    = "Real Device"
    creator = "gauravsharma25861@gmail.com"

  }

}
