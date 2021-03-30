provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "maqui" {
  ami = "ami-013f17f36f8b1fefb"
  instance_type = "t2.micro"
  key_name = "concrete-terraform"
  tags = {
    Name = "maqu${count.index}"
  }
  count = 2
  vpc_security_group_ids = ["${aws_security_group.acesso_ssh.id}"]
  depends_on = [aws_security_group.acesso_ssh, aws_s3_bucket.concete_s3]
}
