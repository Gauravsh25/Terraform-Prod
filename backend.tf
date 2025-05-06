terraform {
  backend "s3" {
    bucket = "ramprateek"
    key    = "terraform.tfstate"
    region = "ap-south-1"
    #dynamodb_table = "terraform-locks" # optional but recommended
    #encrypt        = true
    use_lockfile = true
  }
}
