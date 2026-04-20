terraform {
  backend "s3" {
    bucket = "corpitsoft-backend-state"
    key    = "dev/terraform.tfstate"
    region = "us-east-1"
    use_lockfile = true
  }
}

