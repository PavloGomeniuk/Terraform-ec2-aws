terraform {
  backend "s3" {
    bucket         = "terra-state-omen"
    key            = "state/demo.tfstate"
    region         = "us-west-2"
    dynamodb_table = "terra-table-lock"
  }
}