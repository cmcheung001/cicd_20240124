terraform {
  backend "s3" {
    bucket = "sctp-ce5-tfstate-bucket-1"
    key    = "jeremy_${myenv}.tfstate"
    region = "us-east-1"
  }
}