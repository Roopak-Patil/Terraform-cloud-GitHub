terraform {
    required_version = "~> 1.3.9" // added latest version
    required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
     }
    }
   }

provider "aws" {
        region = "us-east-1" 
        #profile = "default"
	}

resource "aws_instance" "Raminfra" {
	ami = "ami-006dcf34c09e50022" 
	instance_type = "t2.micro"
}
