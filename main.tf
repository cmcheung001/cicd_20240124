
resource "aws_sns_topic" "user_updates" {
  provider = aws.dev
  name = var.res_name + "-updates-topic"
  #name = "jeremy001-updates-topic"
}




