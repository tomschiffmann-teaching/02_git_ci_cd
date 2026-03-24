terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }


  backend "s3" {
    bucket = "amzn-s3-bs-2026"
    key    = "app/terraform.tfstate" # Key könnt ihr selbst bestimmen, sollte nur über die deployments einheitlich sein
    region = "us-east-1"
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "demo" {
  ami                    = "ami-0b6c6ebed2801a5cb" # ubuntu
  instance_type          = "t2.micro"
  key_name               = "my-aws-key-pair"
  tags = {
    Name = "test-server-iac"
  }
}


output "instance_id" {
  value = aws_instance.demo.id
}

output "public_ip" {
  value = aws_instance.demo.public_ip
}
