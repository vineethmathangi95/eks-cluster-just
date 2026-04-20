terraform {
  backend "s3" {
    bucket = "corpitsoft-backend-state"
    key    = "terraform.tfstate"
    region = "us-east-1"
    use_lockfile = true
  }
}

