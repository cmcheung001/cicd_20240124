
#resource "aws_sns_topic" "user_updates1" {
#  provider = aws.dev
#  name = "${var.res_name}-dev-updates-topic"
#  #name = "jeremy001-updates-topic"
#}


resource "aws_sns_topic" "user_updates2" {
  provider = aws
  name = "${var.myenv}-jeremy-updates-topic"
  #name = "jeremy001-updates-topic"
}

