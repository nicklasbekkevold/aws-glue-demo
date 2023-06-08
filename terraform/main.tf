terraform {
  backend "s3" {
    bucket         = "nicklasbekkevold-terraform"
    key            = "states/terraform.tfstate"
    region         = "eu-central-1"
    dynamodb_table = "terraform-state-lock"
  }

  required_version = ">=1.4.6"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>5.1.0"
    }
  }
}

provider "aws" {
  region = "eu-central-1"
}

module "terraform-state" {
  source      = "./modules/terraform-state"
  bucket_name = "nicklasbekkevold-terraform"
}
