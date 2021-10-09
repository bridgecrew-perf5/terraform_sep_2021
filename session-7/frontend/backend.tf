terraform {
  backend "s3" {
    bucket         = "terraform-session-september-remote-backend"
    key            = "session-7/frontend/terraform.tfstate"
    region         = "us-west-2"
    dynamodb_table = "terraform-state-lock"
  }
}