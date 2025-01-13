terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.83.0"
    }
  }
}

# define the aws provider

provider "aws" {
  region = "ap-south-1"
}

module "vpc" {
    source = "./module/vpc"


    vpc_cidr = "10.0.0.0/22"
    vpc_name = "terraform-jenkins-vpc"
    subnet_cidr = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24", "10.0.4.0/24"]
    subnet_az = ["ap-south-1a", "ap-south-1b", "ap-south-1c"]
}