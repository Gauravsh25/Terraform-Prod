resource "aws_ecr_repository" "my_app" {
  name                 = "testecr"
  image_tag_mutability = "MUTABLE"
  force_delete         = true

  image_scanning_configuration {
    scan_on_push = true
  }

  tags = {
    Name        = "test"
    Environment = "Mobile"
  }
}
