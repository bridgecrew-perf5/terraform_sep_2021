terraform {
  backend "s3" {
    bucket = "terraform-session-september-remote-backend"
    key    = "terraform.tfstate"
    region = "us-west-2"
    workspace_key_prefix = "session-11"
  }
}

// S3 bucket

// file = session-11/dev/terraform.tfstate

// When you use non-default workspace, it creates a STATE in the following orders:

// workspace_key_prefix/workspace_name/key

// Open source tool = TerraGrunt, TerraGoat 