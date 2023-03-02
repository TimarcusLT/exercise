terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.56.0"
    }
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}
resource "aws_s3_bucket" "v-example" {
  bucket = "${var.buckname}-${count.index}"
  count  = var.bucknum
}
variable "bucknum" {
  default = 1
}
resource "aws_iam_user" "new_users" {
  for_each = toset(var.new_users)
  name     = each.value
}

variable "new_users" {
  default = ["John", "Marry", "Sam"]
}
