# Create EC2
resource "aws_instance" "tf_demo" {
  count                  = 3
  ami                    = "ami-0b5eea76982371e91"
  key_name               = "marco-keypair"
  subnet_id              = aws_subnet.pub_subnet.id
  vpc_security_group_ids = [aws_security_group.ssh_https_sg.id]
  instance_type          = "t2.micro"

  tags = {
    Name = "tf-instance"
  }
}