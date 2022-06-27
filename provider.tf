provider "aws" {
  region = local.aws_region
  assume_role {
    role_arn     = "arn:aws:iam::245582572290:role/terraform_ec2"
    session_name = "terraform_ec2"
  }
}