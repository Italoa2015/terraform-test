terraform {

    cloud {
        organization = "ucp-new"
        workspaces = {
            name
        }
    }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region = "us-east-2"
  shared_config_files      = ["/Users/ktao007/.aws/config"]
  shared_credentials_files = ["/Users/ktao007/.aws/credentials"]
  profile = "mfa"
}

resource "aws_instance" "app_server" {
  ami           = "ami-02d1e544b84bf7502"
  instance_type = "t2.micro"
  subnet_id = "subnet-04323fc9709430bbf"

  tags = {
    Name = var.instance_name
  }
}
