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

# Used to query stuff
data "aws_vpc" "existing_vpc" {
    default = true
}

# We can now use the query above!
resource "aws_subnet" "dev-subnet-2" {
    vpc_id = data.aws_vpc.existing_vpc.id

    # from the default vps and then taking the next subnet
    cidr_block = "172.31.48.0/20"
    availability_zone = "eu-central-1a"
}