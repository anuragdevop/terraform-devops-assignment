resource "aws_instance" "nginx_instance" {
  ami           = "ami-0c55b159cbfafe1f0"  # Replace with a valid Amazon Linux AMI for your region
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.public_subnet_1.id
  security_group_ids = [aws_security_group.allow_http.id]
  tags = {
    Name = "nginx-instance"
  }

  user_data = <<-EOF
              #!/bin/bash
              yum install -y nginx
              systemctl start nginx
              systemctl enable nginx
              EOF
}

