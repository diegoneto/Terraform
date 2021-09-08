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
  profile = "default"
  region  = "us-west-2"
}

resource "aws_instance" "maquina_maluca" {
  ami = "${var.amis[us-east1-ubuntu18]}"
  instance_type = "${var.instance_type.micro}"

  key_name = "terraform"
  tags = {
    Name = "maaquina_ansible_terraform"
    }
}    