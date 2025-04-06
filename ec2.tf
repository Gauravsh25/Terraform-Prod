resource "aws_instance" "My-ec2-1" {
  ami             = "ami-0dee22c13ea7a9a67"
  instance_type   = "t2.medium"
  key_name        = "kube-demo"
  user_data       = file("kind.sh")
  security_groups = ["tf-security-group"]
  root_block_device {
    volume_size           = 30 # Size in GB
    volume_type           = "gp3"
    delete_on_termination = true
  }
  tags = {
    Name = "Web-Server"
    Team = "Real Device"
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
