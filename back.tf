terraform {
  backend "s3" {
    bucket = "sctp-ce5-tfstate-bucket-1"
    key    = "jeremy_20240224.tfstate"
    #key    = "jeremy_${var.myenv}.tfstate"
    #key    = var.myenv
    region = "us-east-1"
  }
}