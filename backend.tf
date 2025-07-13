terraform {
  backend "s3" {
    bucket         = "myterraform7bucket"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraformlock"
  }
}
