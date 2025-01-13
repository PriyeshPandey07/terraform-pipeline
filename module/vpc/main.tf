resource "aws_vpc" "main" {
    cidr_block = var.vpc_cidr
    tags = {
      Name = "terraform-jenkins-vpc"
    }
}

resource "aws_subnet" "subnet1" {
    cidr_block = var.subnet_cidr[0]
    vpc_id = aws_vpc.main.id
    availability_zone = var.subnet_az[0]
    tags = {
      Name = "terraform-jenkins-subnet1"
    }
}

resource "aws_subnet" "subnet2" {
    cidr_block = var.subnet_cidr[1]
    vpc_id = aws_vpc.main.id
    availability_zone = var.subnet_az[1]
    tags = {
      Name = "terraform-jenkins-subnet2"
    }
}

resource "aws_subnet" "subnet3" {
    cidr_block = var.subnet_cidr[2]
    vpc_id = aws_vpc.main.id
    availability_zone = var.subnet_az[2]
    tags = {
      Name = "terraform-jenkins-subnet3"
    }
}

