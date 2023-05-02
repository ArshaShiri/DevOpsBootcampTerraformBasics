terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.65.0"
    }
  }
}

# Whenever a provider is installed, it has to be installed.
provider "aws" {
    region = "eu-central-1"

    # Do not hardcode the credentials here!
    access_key = ""
    secret_key = ""
}
