terraform {
  backend "s3" {
    bucket         = "your bucket name"
    key            = "terrafrom-state-bucket folder/terraform.tfstate"
    region         = "region"
    dynamodb_table = "lock name"
    encrypt        = true
  }
}
