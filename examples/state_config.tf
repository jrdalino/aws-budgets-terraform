terraform {
  backend "s3" {
    region         = "ap-southeast-1"
    bucket         = "623552185285-ap-southeast-1-terraform-state" // AWS acccount where state backend is located
    key            = "bbsdm-shared-aws-budgets-terraform.tfstate"
    encrypt        = "true"
    dynamodb_table = "terraform-state-lock"
  }
}