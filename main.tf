
resource "aws_instance" "web" {
  ami                    = var.my_ami
  instance_type          = "t2.micro"
  key_name               = var.my_key
  subnet_id              = var.my_subnet

  tags = {
    Name = "my_instance"
  }
}
resource "aws_eip" "eip" {
  instance = aws_instance.web.id
  vpc      = true
}