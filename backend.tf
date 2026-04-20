terraform {
  backend "s3" {
    bucket = "corpitsoft-backend-state"
    key    = "terraform.tfstate"
    region = "us-west-1"
    use_lockfile = true
  }
}

