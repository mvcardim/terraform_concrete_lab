resource "aws_db_instance" "default" {
  engine            = "mysql"
  engine_version    = "5.7.19"
  instance_class    = "db.t1.micro"
  # instance_class    = "db.t2.large"
  name           = "danilo_db"
  username       = "danilouser"
  password       = "danilopass"
  allocated_storage = 5
  vpc_security_group_ids = ["${aws_security_group.acesso_mysql.id}"] 
}