provider "aws" {
  region = "ap-northeast-1"
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
  alias = "Virginia_VPC"
}

provider "aws" {
  region = "ap-east-1"
  alias = "Hong_Kong_VPC"
}

provider "aws" {
  region = "ap-southeast-2"
  alias = "australia_VPC"
}


provider "aws" {
  region = "us-west-1"
  alias = "California_VPC"
}

provider "aws" {
  region = "eu-west-2"
  alias = "London_VPC"
}


provider "aws" {
  region = "sa-east-1"
  alias = "Sao_Paulo_VPC"
}

