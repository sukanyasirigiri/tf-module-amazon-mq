data "aws_ami" "ubuntu" {
  most_recent = true
  owners = ["97371446881"]
  name_regex = "centos-8-DevOps-practice" 
}

data "aws_ssm_parameter" "rabbitmq_appuser_password" {
  name = "${var.env}.${var.name}.rabbitmq_appuser_password"
}
