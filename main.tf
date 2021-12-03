terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

 required_version = ">= 0.14.9"

}

provider "aws" {
  profile = var.profile
  region  = var.region
}

resource "aws_instance" "server_dev" {
  ami           = var.ami
  instance_type = var.instance_type
  key_name      = var.key_name
  subnet_id     = var.subnet_id
  count         = 2


  tags = {
    Name = "ec2-${count.index}"
  }

}

