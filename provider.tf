# Configure the AWS Provider
provider "aws" {
 alias = "dev"
 region = "us-east-1"
}

provider "aws" {
 alias = "prd"
 region = "us-west-1"
}


