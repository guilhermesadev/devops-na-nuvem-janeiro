variable "default_tags" {
  type = object({
    Project     = string
    Environment = string
  })

  default = {
    Project     = "gui-dvn-workshop"
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

variable "remote_backend" {
  type = object({
    dynamodb_table_name          = string
    dynamodb_table_billing_mode  = string
    dynamodb_table_hash_key      = string
    dynamodb_table_hash_key_type = string
    bucket_name                  = string

  })
  default = {
    dynamodb_table_name          = "gui-dvn-workshop-state-locking-table"
    dynamodb_table_billing_mode  = "PAY_PER_REQUEST"
    dynamodb_table_hash_key      = "LockID"
    dynamodb_table_hash_key_type = "S"
    bucket_name                  = "gui-dvn-workshop-remote-backend-bucket"
  }
}