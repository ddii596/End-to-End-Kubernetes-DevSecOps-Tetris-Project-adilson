terraform {
  backend "s3" {
    bucket         = "ddii596-lab-terraform-statefile"
    region         = "us-east-1"
    key            = "tf-jenkins/terraform.tfstate"
    dynamodb_table = "ddii596-lab-terraform-lock"
    encrypt        = true
  }
  required_version = ">=0.13.0"
  required_providers {
    aws = {
      version = ">= 2.7.0"
      source  = "hashicorp/aws"
    }
  }
}
