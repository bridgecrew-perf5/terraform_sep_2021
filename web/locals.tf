locals {
  project  = "web"
  app_port = 80
  domain   = "${local.project}.${var.base_domain}"
  tags = {
    Project   = title(local.project) # web, # Web
    Team      = "DevOps"
    Env       = title(var.env)
    Owner     = "Kris"
    ManagedBy = "Terraform"
  }

  region_to_tag_region = {
    us-east-1 = "use1"
    us-east-2 = "use2"
    us-west-1 = "usw1"
    us-west-2 = "usw2"
  }

  tag_region = lookup(local.region_to_tag_region, var.region, "undefined")

  name = "${var.env}-${local.project}-rtype"

}