resource "aws_instance" "web" {

  ami           = "ami-02867e80f0c951f8b"
  instance_type = var.instance_type

  tags = {
    Name        = "TerraformPortfolioServer"
    Environment = "Lab"
  }
}

# A default VPC is required to create a security group, so we fetch it here
data "aws_vpc" "default" {
  default = true
}

# Create a security group for the instance
resource "aws_security_group" "xterra_sg" {
  name        = "xterra-sg"
  description = "Security group for TerraformPortfolioServer"
  vpc_id      = data.aws_vpc.default.id

# Ingress rules for HTTP and SSH
  ingress {
    description = "HTTP"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

# Egress rule to allow all outbound traffic
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

