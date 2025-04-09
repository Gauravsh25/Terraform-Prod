resource "aws_key_pair" "new-tf-key" {
  key_name   = "new_tf_key"
  public_key = file("test.pub")
}
