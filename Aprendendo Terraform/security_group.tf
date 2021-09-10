resource "aws_security_group" "acesso_geral" {
  name        = "acesso_geral"
  description = "Allow TLS inbound traffic"
  vpc_security_group_ids      = acesso_geral.main.id
  ingress = [
    {
      description      = "TLS from VPC"
      from_port        = 443
      to_port          = 443
      protocol         = "tcp"
      cidr_blocks      = [aws_security_group.main.cidr_block]
      ipv6_cidr_blocks = [aws_security_group.main.ipv6_cidr_block]
    }
  ]

  egress = [
    {
      from_port        = 0
      to_port          = 0
      protocol         = "-1"
      cidr_blocks      = ["0.0.0.0/0"]
      ipv6_cidr_blocks = ["::/0"]
    }
  ]

  tags = {
    Name = "acesso_total"
  }
}