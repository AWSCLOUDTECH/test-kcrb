provider "aws" {
 region = "ap-northeast-1"
}

variable "env" {
    type = string
    default = "prod"
}

variable "myip" {
    type = string
    description = "Check-> https://www.whatismyip.com/"
    default = "0.0.0.0"
}

locals{
    app_name = "handson-web"
    name_prefix = "${var.env}-${local.app_name}"
}

test