variable "default_tags" {
  type = object({
    Project     = string
    Environment = string
  })

  default = {
    Project     = "dvn-workshop"
    Environment = "production"
  }
}


variable "assume_role" {
  type = object({
    arn    = string
    region = string
  })
  default = {
    arn    = "arn:aws:iam::497924967799:role/gui-workshop-role"
    region = "us-east-2"
  }
}


variable "vpc" {
  type = object({
    name       = string
    cidr_block = string
  })

  default = {
    name       = "teste-vpc"
    cidr_block = "10.0.0.0/24"
  }
}