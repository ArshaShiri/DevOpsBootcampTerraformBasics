# Whenever a provider is installed, it has to be installed.
provider "aws" {
    region = "eu-central-1"

    # Do not hardcode the credentials here!
    access_key = ""
    secret_key = ""
}

resource "aws_vpc" "development-vpc" {
    cidr_block = "10.0.0.0/16"
}

resource "aws_subnet" "dev-subnet-1" {
    vpc_id = aws_vpc.development-vpc.id
    cidr_block = "10.0.0.0/24"
    availability_zone = "eu-central-1a"
}
