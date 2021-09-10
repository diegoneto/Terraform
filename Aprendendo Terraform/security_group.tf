resource "aws_security_group" "acesso_geral" {
  name        = "acesso_geral"
  description = "Allow TLS inbound traffic"
  ingress = [
    {
      description      = "TLS from VPC"
      from_port        = 443
      to_port          = 443
      protocol         = "tcp"
      cidr_blocks      = ["0.0.0.0/0"]
      description = ""
      ipv6_cidr_blocks = ["::/0"]
      prefix_list_ids =[]
      security_groups =[]
      self            = false
    }
  ]

  egress = [
    {
      from_port        = 0
      to_port          = 0
      protocol         = "-1"
      cidr_blocks      = ["0.0.0.0/0"]
      ipv6_cidr_blocks = ["::/0"]
      description      = ""
      prefix_list_ids =[]
      security_groups =[]
      self            = false
    }
  ]

  tags = {
    Name = "acesso_do_caralho"
  }
}