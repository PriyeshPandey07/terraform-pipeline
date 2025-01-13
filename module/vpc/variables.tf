variable "vpc_name" {}
variable "vpc_cidr" {}
variable "subnet_cidr" {
    type = list
}
variable "subnet_az" {
    type = list
}
