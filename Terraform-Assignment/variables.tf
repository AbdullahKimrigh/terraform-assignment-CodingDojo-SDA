variable "cidr_block" {
  default = "10.1.0.0/16"
}

variable "tags" {

  type = map(any)

  default = {
    "source" = "Terraform"
  }

}

variable "REGION" {

  type    = string
  default = "us-east-1"

}

variable "amazonlinux-ami-image" {
  type    = string
  default = "ami-0cff7528ff583bf9a"
}

variable "ubuntu-ami-image" {
  type    = string
  default = "ami-052efd3df9dad4825"
}


variable "instance_type" {
  type    = string
  default = "t2.micro"
}