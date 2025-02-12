variable "region" {
  default = "us-west-2"
}
variable "cluster_name" {}
variable "ssh_key_name" {}
variable "vpc_cidr" {}
variable "subnet_cidrs" {
  type = list(string)
}
variable "availability_zones" {
  type = list(string)
}
variable "instance_type" {}
variable "desired_capacity" {}
variable "max_capacity" {}
variable "min_capacity" {}
