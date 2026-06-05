resource "aws_instance" "web" {

  ami           = "ami-02867e80f0c951f8b"
  instance_type = var.instance_type

  tags = {
    Name = "TerraformPortfolioServer"
    Environment = "Lab"
  }
}