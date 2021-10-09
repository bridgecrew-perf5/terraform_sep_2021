data "terraform_remote_state" "rds" {
  backend = "s3"
  config = {
    bucket         = "terraform-session-september-remote-backend"
    key            = "session-7/backend/terraform.tfstate"
    region         = "us-west-2"
  }
}