terraform {
  backend "s3" {
    bucket = "yusdel-terraform-state-2026"
    key    = "terraform-aws-infrastructure-ci/terraform.tfstate"
    region = "sa-east-1"
    use_lockfile = true
  }
}