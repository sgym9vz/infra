# Security Group
resource "aws_security_group" "app_sg" {
  name   = "${var.name}-sg"
  vpc_id = var.vpc_id

  # SSH: 自分のIPのみ
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # HTTP: 自分のIPのみ
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = [var.my_ip_cidr]
  }

  # Outbound: 全許可
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "${var.name}-sg"
  }
}

# EC2 Instance
resource "aws_instance" "app" {
  ami                         = var.ami_id
  instance_type               = "t3.small"
  subnet_id                   = var.subnet_id
  vpc_security_group_ids      = [aws_security_group.app_sg.id]
  associate_public_ip_address = true
  key_name                    = var.key_name

  root_block_device {
    volume_size = 30      # GiB
    volume_type = "gp3"
  }

  tags = {
    Name = "${var.name}-ec2"
  }

  user_data = <<-EOF
              #!/bin/bash
              set -eux
              dnf -y update
              dnf -y install docker
              systemctl enable --now docker
              docker run -d --restart=always -p 80:80 nginx:latest
              EOF
}