resource "aws_instance" "SampleEC2" {
  ami           = var.amazonlinux-ami-image
  instance_type = var.instance_type

  associate_public_ip_address = true

  # the VPC subnet
  subnet_id = aws_subnet.public_subnet.id

  # the security group
  vpc_security_group_ids = [aws_security_group.public_sg.id]

  user_data = <<-EOF
  #!/bin/bash
  yum update -y
  yum install httpd.x86_64 -y
  systemctl start httpd.service
  systemctl enable httpd.service
  echo "Hi, Completed Installing apache2" > /var/www/html/index.html
  EOF

  tags = {
    "Name" = "Sample"
  }
}

resource "aws_instance" "TestEC2" {
  ami           = var.ubuntu-ami-image
  instance_type = var.instance_type

  # the VPC subnet
  subnet_id = aws_subnet.private_subnet.id

  # the security group
  vpc_security_group_ids = [aws_security_group.private_sg.id]

  user_data = <<-EOF
  #!/bin/bash
  sudo apt update -y
  sudo apt install apache2 -y
  sudo systemctl apache2 start
  sudo systemctl apache2 enable
  echo "Hi, Completed Installing apache2" > /var/www/html/index.html
  EOF

  tags = {
    "Name" = "Test"
  }
}