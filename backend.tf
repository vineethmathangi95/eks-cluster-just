terraform {
  backend "s3" {
    bucket = "awscluster-backend"
    key    = "terraform.tfstate"
    region = "us-west-2"
    use_lockfile = true
  }
}
