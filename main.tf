terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"  # Substitua pela região desejada
}


resource "aws_dynamodb_table" "carros" {
  name           = "carros"
  billing_mode   = "PAY_PER_REQUEST"
  
  attribute {
    name = "id"
    type = "S"
    
  }

  hash_key = "id"

  tags = {
    Name = "tabela-carros"
  }
}
