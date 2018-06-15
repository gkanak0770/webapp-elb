variable "AWS_ACCESS_KEY" {}
variable "AWS_SECRET_KEY" {}
variable "AWS_REGION" { default = "us-east-1" }

variable "PATH_TO_PRIVATE_KEY" { default = "~/work/terraform/assignment01/gtm-key1.pem" }
variable "PATH_TO_PUBLIC_KEY" { default = "~/work/terraform/assignment01/gtm-key1.pub"  }
variable "AMIS" { default = "ami-12004c05"}
