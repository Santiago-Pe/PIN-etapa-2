##Create and bootstrap webserver #lanzar
resource "aws_instance" "webserver" {
  ami                         = "ami-00c39f71452c08778"
  instance_type               = "t2.micro"
  #key_name                    = app-ssh-key 
  associate_public_ip_address = true
  vpc_security_group_ids      = ["vpc-0583a731fd747f71f"]
  subnet_id                   = "subnet-0aab546438f7f7edc"
  user_data                   = "${file("create_apache.sh")}"

  tags = {
    Name = "webserver"
  }
}
