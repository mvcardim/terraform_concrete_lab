resource "aws_security_group" "acesso_ssh" {
  name        = "acesso_ssh"
  description = "Treinamento concrete com acesso a SSH"
  ingress {
    description = "Para acessar a maquina via ssh"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["187.3.223.136/32"]
  }
  tags = {
    Name = "acesso_ssh_concrete"
  }
}

resource "aws_security_group" "acesso_mysql" {
  name        = "acesso-mysql"
  description = "Para acessar os dados via mysql"

  ingress {
    description = "Acesso mysql"
    from_port   = 3306
    to_port     = 3306 # porta de acesso a mysql
    protocol    = "tcp"
    cidr_blocks = ["187.3.223.136/32"]
  }

  tags = {
    Name = "acesso-mysql"
  }
}