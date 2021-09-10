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
  region  = "${var.aws_default_region.region}"
}

resource "aws_instance" "maquina_maluca" {
  ami = "${var.amis["us-east-1-ubuntu18"]}"
  instance_type = "${var.instance_type.micro}"

  key_name = "terraform"
  tags = {
    Name = "nova_maquina_ansible_terraform"
    }
      vpc_security_group_ids = ["${aws_security_group.acesso_geral.id}"]
}
