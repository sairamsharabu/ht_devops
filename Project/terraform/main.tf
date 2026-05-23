provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "devops_demo" {
  ami           = "ami-07a00cf47dbbc844c"
  instance_type = "t2.micro"

  tags = {
    Name = "DevOps-Demo"
  }
}