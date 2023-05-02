# Whenever a provider is installed, it has to be installed.
provider "aws" {
    region = "eu-central-1"

    # Do not hardcode the credentials here!
    access_key = ""
    secret_key = ""
}
