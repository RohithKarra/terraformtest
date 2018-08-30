variable "key_name" {
  description = "cicd"
}

variable "aws_region" {
  description = "AWS region to launch servers."
  default     = "us-west-1"
}
variable "aws_amis" {
  default = {
    "us-east-1" = "ami-0d854db2d8e522cf0"
    "us-west-2" = "ami-0d854db2d8e522cf0"
  }
}