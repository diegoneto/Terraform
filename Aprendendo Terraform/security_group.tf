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
      
    }
  ]

  egress = [
    {
      from_port        = 0
      to_port          = 0
      protocol         = "-1"
      
    }
  ]

  tags = {
    Name = "acesso_total"
  }
}