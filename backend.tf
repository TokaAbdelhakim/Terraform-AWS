terraform {
  backend "s3" {
    bucket = "terraform-state-bucket-sprints"
    key    = "terraform.tfstate"
    region = "us-west-2"
    dynamodb_table="sprints_terraform"
  }
}

