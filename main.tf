terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.45.0"
    }
    aws = {
      source  = "hashicorp/aws"
      version = "4.56.0"
    }
  }
}

provider "azurerm" {
  # Configuration options
  features {}
}
provider "aws" {
  # Configuration options
  region = "us-east-1"
}

resource "azurerm_resource_group" "example" {
  name     = "Sucramit"
  location = "East US"


  tags = {
    source = "Smile"
  }
}


resource "aws_resourcegroups_group" "test" {
  name        = "test-group"
  description = "used as a test to check for failure"
}


