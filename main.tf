provider "aws" {
  region = "ap-southeast-1"
}

terraform {
  required_version = ">=1.9"

  required_providers {
    aws = {
      version = "6.2.0"
      source  = "hashicorp/aws"
    }
  }

  backend "s3" {
    bucket = "sctp-ce10-tfstate"
    key    = "kamsani" #Change this
    region = "ap-southeast-1"
  }
}

resource "aws_s3_bucket" "s3_tf" {
  bucket_prefix = "kamsani-Assignment3.2" # Set your bucket name here
}
